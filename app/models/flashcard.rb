class Flashcard < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :name,      length: { maximum: 100 }
  end
end
