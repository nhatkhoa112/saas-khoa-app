class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.references :tenant, foreign_key: true
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name

      t.timestamp null: false
    end
    add_index :members, :first_name
    add_index :members, :last_name
  end
end
