class Flashcard < ApplicationRecord
  belongs_to :user
  has_many :words
  with_options presence: true do
    validates :name,      length: { maximum: 100 }
  end
end
