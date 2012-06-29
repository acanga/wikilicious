class User < ActiveRecord::Base
  devise :registerable, :validatable, :database_authenticatable, :rememberable,
    :recoverable, :trackable

  attr_accessible :email, :password, :password_confirmation, :remember_me
end