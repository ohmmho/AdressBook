class DestroyEmailPhone < ActiveRecord::Migration
  def change
    remove_columnm :people, :email, :text
    remove_columnm :people, :phone, :integer
  end
end
