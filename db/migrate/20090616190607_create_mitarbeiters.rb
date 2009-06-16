class CreateMitarbeiters < ActiveRecord::Migration
  def self.up
    create_table :mitarbeiters do |t|
      t.string :name
      t.float :wochenstunden
      t.references :buchung
      t.references :projekt

      t.timestamps
    end
  end

  def self.down
    drop_table :mitarbeiters
  end
end
