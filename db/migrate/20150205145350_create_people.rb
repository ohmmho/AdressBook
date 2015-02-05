class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name
      t.text :adress
      t.integer :phone
      t.text :email


      t.timestamps null: false
    end
  end
end
