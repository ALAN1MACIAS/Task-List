class User < ApplicationRecord
  has_many :taskstorages, dependent: :delete_all
  has_many :userconfigs

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
