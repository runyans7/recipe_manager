class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates_presence_of :content
end
