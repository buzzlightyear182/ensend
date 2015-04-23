class Counter < ActiveRecord::Base
  belongs_to :link
  is_impressionable
end
