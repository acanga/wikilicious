class Wiki < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :user, :foreign_key => :owner_id

  validates_presence_of :name, :description
  validates_uniqueness_of :name, :case_sensitive => :false
end
