class HomepageController < ApplicationController
  def index
    @production = Category.find(1)
    @construction = Category.find(2)
    @rendering = Category.find(3)
    @drawingandpainting = Category.find(4)
    @bio = User.first.bio
    @resume = User.first.resume
  end
end
