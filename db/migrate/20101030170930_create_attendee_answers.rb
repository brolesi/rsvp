class CreateAttendeeAnswers < ActiveRecord::Migration
  def self.up
    create_table :attendee_answers do |t|
      t.integer :question_id
      t.text :answer
      t.integer :attendee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :attendee_answers
  end
end
