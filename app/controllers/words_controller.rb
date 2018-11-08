class WordsController < ApplicationController
  def index
    @categories = Category.all
    @words = Word.paginate page: params[:page], per_page: 5
  end
end
