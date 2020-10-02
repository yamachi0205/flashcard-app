class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.new(flashcard_palams)
    if @flashcard.save
      redirect_to new_flashcard_word_path(@flashcard.id)
    else
      render 'index'
    end
  end


  private
  def flashcard_palams
    # binding.pry
    params.permit(:name, :user_id).merge(user_id: current_user.id)
  end

end
