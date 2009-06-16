class Buchung < ActiveRecord::Base
  belongs_to :mitarbeiter
  belongs_to :projekt
  
  validates_presence_of :mitarbeiter, :projekt
end
