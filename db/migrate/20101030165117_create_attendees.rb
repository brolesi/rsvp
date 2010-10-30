class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :rsvp_date
      t.string :rsvp_status
      t.text :note
      t.string :kids_meal
      t.string :additional_attendee
      t.string :veggie_meal
      t.text :personal_greeting

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
