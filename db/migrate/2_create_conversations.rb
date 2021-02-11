class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :title
      t.datetime :start_date

      t.timestamps
    end
  end
end
