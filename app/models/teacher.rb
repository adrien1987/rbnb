class Teacher < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :meetings
  has_many :reviews, through: :meetings
  validates :profession, presence: {message: "Champs requis"}
  validates :description, presence: {message: "Champs requis"}
  validates :hourly_price_cents,
  numericality: {
    greater_than_or_equal_to: 0,
    message: "La durée doit être supérieure ou égal à 0"
  }
end
