class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.references :course, foreign_key: true
      t.integer :position, index: true

      t.timestamps
    end
  end
end
