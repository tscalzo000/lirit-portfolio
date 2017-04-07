class HomepageController < ApplicationController
  def index
    @production = Category.find(1)
    @construction = Category.find(2)
    @drawingandpainting = Category.find(3)
    @rendering = Category.find(4)
  end
end
