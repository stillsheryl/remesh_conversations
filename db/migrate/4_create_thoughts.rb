class CreateThoughts < ActiveRecord::Migration[6.1]
  def change
    create_table :thoughts do |t|
      t.text :text
      t.datetime :date_time_sent
      t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
