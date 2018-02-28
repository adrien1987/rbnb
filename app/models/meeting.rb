class Meeting < ApplicationRecord
  STATUS = ["A confirmer", "Confirmé", "Terminé", "Annulé"]
  belongs_to :teacher
  belongs_to :user
  has_many :reviews
end
