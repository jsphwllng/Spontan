class Event < ApplicationRecord
	CATEGORIES = ["sports", "party", "drinking", "social", "yoga", "spiritual", "dancing", "misc", "studying", "political", "food", "board games", "culture"]
	validates :location, presence: true
	validates :description, presence: true
	validates :title, presence: true
	geocoded_by :location
	after_validation :geocode, if: :will_save_change_to_location?
	belongs_to :user
	validates :category, inclusion: { in: CATEGORIES }
	has_many :participations, dependent: :destroy
	has_one_attached :photo
end
