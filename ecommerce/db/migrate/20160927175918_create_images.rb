class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :product, index: true
      t.string :location
      t.text :meta

      t.timestamps
    end
  end
end
