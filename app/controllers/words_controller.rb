class WordsController < ApplicationController

  def new
    # @flashcard = Flashcard.find(params[:id])
    @word = Word.new
  end

  def create
    @word = Word.create(word_params)
    if @word.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def word_params
    params.require(:word).permit(:name, :meaning).merge(flashcard_id: params[:flashcard_id])
  end
end
