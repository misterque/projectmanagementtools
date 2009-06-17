class Projekt < ActiveRecord::Base
  belongs_to :mitarbeiter
  has_many :buchungs
  validates_presence_of :mitarbeiter, :name
end
