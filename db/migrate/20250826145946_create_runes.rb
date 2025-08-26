class CreateRunes < ActiveRecord::Migration[8.0]
  def change
    create_table :runes do |t|
      t.string :social
      t.string :username
      t.string :principal
      t.string :link

      t.timestamps
    end
  end
end
