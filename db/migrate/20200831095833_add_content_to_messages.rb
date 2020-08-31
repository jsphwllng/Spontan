class AddContentToMessages < ActiveRecord::Migration[6.0]
  def change
  	add_column :messages, :content, :string
  	remove_column :messages, :message
  end
end
