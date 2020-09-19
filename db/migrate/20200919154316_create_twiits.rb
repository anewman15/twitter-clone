class CreateTwiits < ActiveRecord::Migration[6.0]
  def change
    create_table :twiits do |t|
      t.text :twiit

      t.timestamps
    end
  end
end
