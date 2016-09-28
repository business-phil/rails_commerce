class Category < ActiveRecord::Base
    has_many :productcategories
    validates :category, presence:true
end
