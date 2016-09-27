class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.string :status
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
