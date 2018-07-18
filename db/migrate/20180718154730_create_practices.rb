class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :name
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
