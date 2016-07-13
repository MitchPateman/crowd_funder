class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :goal
      t.datetime :date
      t.string :url

      t.timestamps
    end
  end
end