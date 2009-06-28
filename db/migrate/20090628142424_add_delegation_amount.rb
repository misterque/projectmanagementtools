class AddDelegationAmount < ActiveRecord::Migration
    def self.up
      add_column :buchungs, :menge, :float
    end

    def self.down
      remove_column :buchungs, :menge
    end
  end
