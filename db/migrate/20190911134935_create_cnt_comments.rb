class CreateCntComments < ActiveRecord::Migration[5.2]
  def change
    create_table :cnt_comments do |t|
      t.integer :user_id, null: false
      t.integer :negotiation_id, null: false
      t.integer :continuation_id, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
