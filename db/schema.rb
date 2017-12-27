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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171227110651) do

  create_table "commits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "pull_request_id"
    t.integer  "commiter_id"
    t.string   "message"
    t.string   "commiter_email"
    t.integer  "comment_count"
    t.integer  "repo_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["pull_request_id"], name: "index_commits_on_pull_request_id", using: :btree
    t.index ["user_id"], name: "index_commits_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "avatar"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "pull_request_files", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pull_request_id"
    t.string   "sha"
    t.string   "filename"
    t.integer  "status"
    t.integer  "additions"
    t.integer  "deletions"
    t.integer  "changes"
    t.string   "patch"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["pull_request_id"], name: "index_pull_request_files_on_pull_request_id", using: :btree
  end

  create_table "pull_requests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.integer  "state"
    t.string   "title"
    t.text     "body",          limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.datetime "closed_at"
    t.datetime "merged_at"
    t.integer  "comments"
    t.integer  "commits"
    t.integer  "additions"
    t.integer  "deletions"
    t.integer  "changed_files"
    t.integer  "merged_by"
    t.boolean  "mergeable"
    t.string   "head_label"
    t.string   "head_sha"
    t.string   "base_label"
    t.string   "base_sha"
  end

  create_table "repositories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "full_name"
    t.integer  "owner_id"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "review_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "review_id"
    t.string   "diff_hunk"
    t.string   "path"
    t.integer  "commit_id"
    t.integer  "original_commit"
    t.integer  "in_reply_to_id"
    t.text     "body",            limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["review_id"], name: "index_review_comments_on_review_id", using: :btree
    t.index ["user_id"], name: "index_review_comments_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.text     "body",       limit: 65535
    t.integer  "commit_id"
    t.integer  "state"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pull_request_id"
    t.integer  "state"
    t.string   "targer_url"
    t.text     "description",     limit: 65535
    t.string   "context"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["pull_request_id"], name: "index_statuses_on_pull_request_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "commits", "pull_requests"
  add_foreign_key "commits", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "pull_request_files", "pull_requests"
  add_foreign_key "review_comments", "reviews"
  add_foreign_key "review_comments", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "statuses", "pull_requests"
end
