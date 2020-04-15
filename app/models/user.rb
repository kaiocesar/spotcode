class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites # tem muitos favoritos
  has_many :recently_heards # tem muitas músicas escutadas

  validates :name, presence: true
end
