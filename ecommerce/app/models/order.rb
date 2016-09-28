class Order < ActiveRecord::Base
  belongs_to :user
  has_many :orderproducts, dependent: :destroy
  validates :user, :street_address, :city, presence:true
  validates :status, inclusion:{ in:%w(Processing Shipped Cancelled) }
  validates :state, presence:true, length:{ is:2 }
  validates :zipcode, presence:true, length:{ is:5 }
end
