class Meeting < ApplicationRecord
  STATUS = ["A confirmer", "Confirmé", "Terminé", "Annulé"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :teacher
  belongs_to :user
  has_many :reviews
  validates :duration,
  numericality: {
    greater_than_or_equal_to: 0,
    message: "La durée doit être supérieure ou égal à 0"
  }
  validates :city, presence: {message: "Champs requis"}
  validates :zipcode, presence: {message: "Champs requis"}
  validates :address, presence: {message: "Champs requis"}
  validates :description, presence: {message: "Champs requis"}

end
