class BiosController < ApplicationController
  def edit
    if user_signed_in?
      @bio = Bio.find(1)
    else
      flash[:alert] = "UNAUTHORIZED"
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    @bio = Bio.find(1)
    @bio.user_id = 1
    @bio.update_attributes(bio_params)
    if @bio.save
      flash[:notice] = "Artist Bio has been updated!"
      redirect_to root_path
    else
      flash[:notice] = @bio.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def bio_params
    params.require(:bio).permit(
      :text
    )
  end
end
