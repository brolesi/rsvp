class CreateAssociatedAttendees < ActiveRecord::Migration
  def self.up
    create_table :associated_attendees do |t|
      t.integer :attendee_id
      t.integer :associated_attendee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :associated_attendees
  end
end
