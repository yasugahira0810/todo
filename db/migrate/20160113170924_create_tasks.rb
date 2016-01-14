class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.integer :status, :default => 0

      t.timestamps null: false
    end
  end
end
