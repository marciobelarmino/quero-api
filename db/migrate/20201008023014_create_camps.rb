class CreateCamps < ActiveRecord::Migration[6.0]
  def change
    create_table :camps do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
