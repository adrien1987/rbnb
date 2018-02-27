class Meeting < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  has_many :reviews
end
