class User < ActiveRecord::Base
  devise :registerable, :validatable, :database_authenticatable, :rememberable,
    :recoverable, :trackable

  has_many :wikis, :foreign_key => :owner_id

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
