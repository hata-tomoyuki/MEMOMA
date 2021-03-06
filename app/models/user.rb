class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :themes, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :summaries, dependent: :destroy
  has_many :importants, dependent: :destroy
end
