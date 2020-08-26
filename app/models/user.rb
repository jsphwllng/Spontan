class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy
  has_many :participations, dependent: :destroy

  has_many :follower_followships,
    class_name: "Followship",
    foreign_key: "follower_id",
    dependent: :destroy

  has_many :followees, through: :follower_followships

  has_many :followee_followships,
    class_name: "Followship",
    foreign_key: "followee_id",
    dependent: :destroy

  has_many :followers, through: :followee_followships

  validates :username, uniqueness: true
end
