class Bill < ActiveRecord::Base
  belongs_to :product
  belongs_to :orderstatus
  belongs_to :user
end
