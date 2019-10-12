class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.integer :user_id, null: false
      t.integer :negotiation_id, null: false
      t.timestamps
    end
  end
end
