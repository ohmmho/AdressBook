class Email < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :e_address
end
