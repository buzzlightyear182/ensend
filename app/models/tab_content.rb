class TabContent < ActiveRecord::Base
  belongs_to :product
  belongs_to :tab
end
