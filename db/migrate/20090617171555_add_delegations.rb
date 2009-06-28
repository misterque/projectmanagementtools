class AddDelegations < ActiveRecord::Migration
  def self.up
    add_column :buchungs, :delegieren, :mitarbeiter
    add_column :buchungs, :grund, :string
  end

  def self.down
    remove_column :buchungs, :delegieren
    remove_column :buchungs, :grund
  end
end
