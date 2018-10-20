class Word < ApplicationRecord
  has_many :lesson_words
  has_many :answers
  belongs_to :category 
end
