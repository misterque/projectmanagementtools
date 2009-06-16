class Projekt < ActiveRecord::Base
  belongs_to :mitarbeiter
  has_many :buchung
  validates_presence_of :mitarbeiter, name
end
