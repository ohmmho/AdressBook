class Person < ActiveRecord::Base
  validates_presence_of :name, :adress
  validates :name, uniqueness: true, length:{ maximum: 30 }

  def self.search(search)
    search_condition = "%" + search + "%"
    where('name LIKE ?', search_condition)
  end 


end
