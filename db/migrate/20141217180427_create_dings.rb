class CreateDings < ActiveRecord::Migration
  def change
    create_table :dings do |t|
      t.text :zeug

      t.timestamps
    end
  end
end
