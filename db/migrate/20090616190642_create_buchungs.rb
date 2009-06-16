class CreateBuchungs < ActiveRecord::Migration
  def self.up
    create_table :buchungs do |t|
      t.belongs_to :mitarbeiter
      t.belongs_to :projekt
      t.integer :woche
      t.integer :jahr
      t.float :geleistet
      t.float :gebucht
      t.text :beschreibung
      t.text :bestaetigung

      t.timestamps
    end
  end

  def self.down
    drop_table :buchungs
  end
end
