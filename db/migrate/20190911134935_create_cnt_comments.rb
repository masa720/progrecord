class CreateCntComments < ActiveRecord::Migration[5.2]
  def change
    create_table :cnt_comments do |t|
      t.integer :user_id
      t.integer :continuation_id
      t.text :body
      t.timestamps
    end
  end
end
