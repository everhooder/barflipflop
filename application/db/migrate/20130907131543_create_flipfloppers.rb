class CreateFlipfloppers < ActiveRecord::Migration
  def change
    create_table :flipfloppers do |t|
      t.string :drink
      t.string :name
      t.string :surname
      t.string :email
      t.date :birthday
      t.text :comment

      t.timestamps
    end
  end
end
