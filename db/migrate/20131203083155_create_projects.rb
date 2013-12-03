class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :country
      t.string :university
      t.string :major
      t.text :description
      t.string :owner
      t.string :contact
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
