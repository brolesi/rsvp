class CreateQuestionTypes < ActiveRecord::Migration
  def self.up
    create_table :question_types do |t|
      t.string :question_type
      t.string :friendly_name

      t.timestamps
    end
  end

  def self.down
    drop_table :question_types
  end
end
