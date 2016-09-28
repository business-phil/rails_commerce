class Orderproduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order, :product, :quantity, presence:true
end
