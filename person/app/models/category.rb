class Category < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :personals, :through => :personalcategory
  has_many :personal_category
end
