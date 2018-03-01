class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if params[:query].present?
      @categories = Category.search_by_name(params[:query])

    else
      @categories = Category.all
    end
  end
end
