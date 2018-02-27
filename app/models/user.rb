class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader

  has_one :teacher
  has_many :meetings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 def teacher?
  teacher.present?
 end
end
