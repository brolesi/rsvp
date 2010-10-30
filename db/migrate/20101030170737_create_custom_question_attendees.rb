class CreateCustomQuestionAttendees < ActiveRecord::Migration
  def self.up
    create_table :custom_question_attendees do |t|
      t.integer :question_id
      t.integer :attendee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_question_attendees
  end
end
