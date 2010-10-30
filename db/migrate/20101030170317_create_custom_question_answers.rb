class CreateCustomQuestionAnswers < ActiveRecord::Migration
  def self.up
    create_table :custom_question_answers do |t|
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_question_answers
  end
end
