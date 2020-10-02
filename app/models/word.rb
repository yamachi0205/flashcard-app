class Word < ApplicationRecord
  belongs_to :flashcard

  with_options presence: true do
    validates :name,      length: { maximum: 100 }
    validates :meaning,   length: { maximum: 200 }
  end

end
