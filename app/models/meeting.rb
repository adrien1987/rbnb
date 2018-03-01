class Meeting < ApplicationRecord
  STATUS = ["A confirmer", "Confirmé", "Terminé", "Annulé"]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :teacher
  belongs_to :user
  has_many :reviews
end
