class Mitarbeiter < ActiveRecord::Base
  has_many :buchung
  has_many :projekt
end
