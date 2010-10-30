class CreateCustomQuestions < ActiveRecord::Migration
  def self.up
    create_table :custom_questions do |t|
      t.text :question
      t.integer :question_type_id
      t.integer :sort_order
      t.string :permission_level

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_questions
  end
end
