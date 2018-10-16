class Admin::WordsController < Admin::ApplicationController

  def new
    @category = Category.find_by(id: params[:category_id])
    @word = @category.words.build
    @word.answers.build
  end

  def create
    @category = Category.find_by(id: params[:category_id])
    @word = @category.words.build word_params
    if @word.save
      flash[:success] = "Word was added successfully"
      redirect_to admin_category_url(@category)
    else
      flash[:danger] = "Word was not added"
      render :new
    end
  end

  private

  def word_params
    params.require(:word).permit :name, answers_attributes: [:id, :name, :is_correct, :_destroy]
  end
end
