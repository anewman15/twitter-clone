class AddUserIdToTwiits < ActiveRecord::Migration[6.0]
  def change
    add_column :twiits, :user_id, :integer
  end
end
