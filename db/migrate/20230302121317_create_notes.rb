class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
