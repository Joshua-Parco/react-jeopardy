class Api::CardsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @cards = @category.cards
    render json: @cards
  end
end
