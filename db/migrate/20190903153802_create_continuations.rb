class CreateContinuations < ActiveRecord::Migration[5.2]
  def change
    create_table :continuations do |t|
      t.integer :user_id
      t.integer :negotiation_id
      t.text :text
      t.integer :year, null:false
      t.integer :month, null:false
      t.integer :day, null:false
      t.string :way, null:false
      t.string :next_nego
      t.integer :next_year
      t.integer :next_month
      t.integer :next_day
      t.timestamps
    end
  end
end
