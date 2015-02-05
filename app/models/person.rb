class Person < ActiveRecord::Base
  has_many :emails, dependent: :delete_all
  has_many :phones, dependent: :delete_all
  validates_presence_of :name, :adress
  validates :name, uniqueness: true, length:{ maximum: 30 }

  def self.search(search)
    search_condition = "%" + search + "%"
    where('name ILIKE ?', search_condition)
  end 


end
