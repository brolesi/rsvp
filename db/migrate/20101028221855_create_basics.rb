class CreateBasics < ActiveRecord::Migration
  def self.up
    create_table :basics do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.string :response
      t.text :guests
      t.text :children

      t.timestamps
    end
  end

  def self.down
    drop_table :basics
  end
end
