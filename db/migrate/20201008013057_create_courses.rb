class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :kind
      t.string :level
      t.string :shift

      t.timestamps
    end
  end
end
