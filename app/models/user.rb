class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :name, presence: true, length: { minimum: 2 }

  has_many :valorants, dependent: :destroy
  has_many :comments, dependent: :destroy
end
