class User::ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def index
    @review = Review.all
  end
  
  def create
  end
  
  def destroy
  end
  
  def update
  end
  
  private


end
