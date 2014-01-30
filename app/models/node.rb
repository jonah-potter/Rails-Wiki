class Node < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :title, :author
  validates_uniqueness_of :title
end