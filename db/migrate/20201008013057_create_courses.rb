class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :university, null: false, foreign_key: true
      t.references :campus, null: false, foreign_key: true
      t.string :name
      t.string :kind
      t.string :level
      t.string :shift

      t.timestamps
    end
  end
end
