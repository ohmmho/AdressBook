class DestroyEmailPhone < ActiveRecord::Migration
  def change
    remove_column :people, :email, :text
    remove_column :people, :phone, :integer
  end
end
