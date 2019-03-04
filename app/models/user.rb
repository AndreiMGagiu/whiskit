class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :name, presence: true
  # validates :email, presence: true
  # validates :address presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :meals
  has_many :orders
end
