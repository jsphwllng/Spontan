class RemoveReviewFromParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :review_id, :string
  end
end
