class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, null:false
      t.string :category, null:false
      t.string :person, null:false
      t.string :position
      t.string :tel
      t.string :mobile
      t.string :fax
      t.string :email
      t.string :product, null:false
      t.string :remarks
      t.timestamps
    end
  end
end
