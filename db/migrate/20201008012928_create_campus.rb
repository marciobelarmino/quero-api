class CreateCampus < ActiveRecord::Migration[6.0]
  def change
    create_table :campus do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
