class CreateOptions < ActiveRecord::Migration
  def self.up
    create_table :options do |t|
      t.text :option
      t.text :value

      t.timestamps
    end
  end

  def self.down
    drop_table :options
  end
end
