class Answer < ApplicationRecord
  belongs_to :word
  validates :name,  presence: true
  validates_uniqueness_of :name
end
