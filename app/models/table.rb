class Table < ActiveRecord::Base
  belongs_to :users
  has_one :party
end
