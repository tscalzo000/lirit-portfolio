class ResumesController < ApplicationController
  def edit
    if user_signed_in?
      @resume = Resume.find(1)
    else
      flash[:alert] = "UNAUTHORIZED"
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    @resume = Resume.find(1)
    @resume.user_id = 1
    @resume.update_attributes(resume_params)
    if @resume.save
      flash[:notice] = "Artist Resume has been updated!"
      redirect_to root_path
    else
      flash[:notice] = @resume.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def resume_params
    params.require(:resume).permit(
      :url
    )
  end
end
