class Teacher < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :meetings
end
