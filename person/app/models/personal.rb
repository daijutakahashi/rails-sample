class Personal < ActiveRecord::Base
  attr_accessible :address, :age, :birthday, :hight, :name, :weight
  has_many :personalcategory
end
