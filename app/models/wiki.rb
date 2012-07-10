class Wiki < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :owner, :class_name => "User"

  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :owner_id, :case_sensitive => :false
end
