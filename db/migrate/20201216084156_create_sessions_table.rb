class CreateSessionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions_tables do |t|
      t.string :session_id
      t.text :data
      t.timestamp
    end
    add_index :sessions_tables, :session_id, :unique => true
    add_index :sessions_tables, :data
  end
end
