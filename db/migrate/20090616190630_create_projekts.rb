class CreateProjekts < ActiveRecord::Migration
  def self.up
    create_table :projekts do |t|
      t.belongs_to :mitarbeiter
      t.references :buchung
      t.string :name
      t.integer :fertigstellungsgrad
      t.integer :einstufungsgrad
      t.float :budget

      t.timestamps
    end
  end

  def self.down
    drop_table :projekts
  end
end
