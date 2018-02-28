class Teacher < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :meetings
  has_many :reviews, through: :meetings
end
