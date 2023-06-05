class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :age
      t.text :hobby
      t.text :image

      t.timestamps
    end
  end
end
