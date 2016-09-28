class Image < ActiveRecord::Base
  belongs_to :product
  validates :product, :location, :meta, presence:true
end
