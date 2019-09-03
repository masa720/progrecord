class CreateNegotiations < ActiveRecord::Migration[5.2]
  def change
    create_table :negotiations do |t|
      t.references :customer, null:false, foreign_key: true
      t.references :user, null:false, foreign_key: true
      t.integer :year, null:false
      t.integer :month, null:false
      t.integer :day, null:false
      t.string :title, null:false
      t.text :body, null:false
      t.string :content, null:false
      t.string :importance, null:false
      t.string :department
      t.string :way, null:false
      t.string :next_nego
      t.integer :next_year
      t.integer :next_month
      t.integer :next_day
      t.timestamps
    end
  end
end