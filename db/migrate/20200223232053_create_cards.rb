# frozen_string_literal: true

# migrate class
class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.text :original_text, null: false
      t.text :translated_text, null: false
      t.date :review_date, null: false

      t.timestamps
    end
  end
end
