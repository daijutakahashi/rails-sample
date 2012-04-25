class PersonalCategory < ActiveRecord::Base
  # attr_accessible :title, :body
  belong_to :personal
  belong_to :category
end
