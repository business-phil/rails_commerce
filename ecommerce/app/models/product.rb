class Product < ActiveRecord::Base
    has_many :images
    has_many :orderproducts
    has_many :productcategories, dependent: :destroy
    validates :name, :description, :price, :stock, presence:true
end
