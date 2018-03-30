class AddUserIdToTts < ActiveRecord::Migration[5.1]
  def change
    add_column :tts, :user_id, :integer
  end
end
