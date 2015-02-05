class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.belongs_to :person, index: true
      t.string :phone
      t.timestamps null: false
    end
  end
end
