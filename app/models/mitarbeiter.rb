class Mitarbeiter < ActiveRecord::Base
  has_many :buchungs
  has_many :projekts
end
