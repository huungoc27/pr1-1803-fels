class Word < ApplicationRecord
  has_many :lesson_words
  has_many :answers
  belongs_to :category

  scope :learned, -> { where(learned: true) }
  scope :not_learned, -> { where(learned: false) }
  scope :category_id, ->(category_id) {
    where category_id: category_id if category_id.present?
  }

  accepts_nested_attributes_for :answers

  def find_answers
    self.answers.find_by is_correct: true
  end
end
