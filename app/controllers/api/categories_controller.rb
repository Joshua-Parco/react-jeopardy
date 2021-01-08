class Api::CategoriesController < ApplicationController
  def index
    render json: Category.all
  end

  def show_categories_with_cards
    categories_data = Category.all.map do |c|
      {
        category: c.name,
        category_id: c.id,
        cards: c.cards,
      }
    end
    render json: { data: categories_data }
  end
end
