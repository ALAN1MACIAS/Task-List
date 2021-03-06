class User < ApplicationRecord
  has_many :taskstorages, dependent: :delete_all
  has_many :sharestorage
  has_one :userconfig

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
