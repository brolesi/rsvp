# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101030171135) do

  create_table "associated_attendees", :force => true do |t|
    t.integer  "attendee_id"
    t.integer  "associated_attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendee_answers", :force => true do |t|
    t.integer  "question_id"
    t.text     "answer"
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "rsvp_date"
    t.string   "rsvp_status"
    t.text     "note"
    t.string   "kids_meal"
    t.string   "additional_attendee"
    t.string   "veggie_meal"
    t.text     "personal_greeting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "basics", :force => true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "phone"
    t.string   "response"
    t.text     "guests"
    t.text     "children"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custom_question_answers", :force => true do |t|
    t.integer  "question_id"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custom_question_attendees", :force => true do |t|
    t.integer  "question_id"
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custom_questions", :force => true do |t|
    t.text     "question"
    t.integer  "question_type_id"
    t.integer  "sort_order"
    t.string   "permission_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "location"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invites", :force => true do |t|
    t.text     "name"
    t.string   "email"
    t.datetime "date"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", :force => true do |t|
    t.text     "option"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_types", :force => true do |t|
    t.string   "question_type"
    t.string   "friendly_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
