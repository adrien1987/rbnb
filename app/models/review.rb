class Review < ApplicationRecord
  belongs_to :meeting
  validates :content, presence: {message: "Champs requis"}
  validates :note, presence: {message: "Champs requis"}
end
