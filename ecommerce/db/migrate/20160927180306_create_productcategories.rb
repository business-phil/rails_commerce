class CreateProductcategories < ActiveRecord::Migration
  def change
    create_table :productcategories do |t|
      t.references :product, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
