class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_one :review, dependent: :destroy
end
