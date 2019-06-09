class CreateToy < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.integer :toyable_id
      t.string :toyable_type
    end

    add_index :toys, [:name, :toyable_id, :toyable_type], unique: true
    add_index :toys, :name
  end
end
