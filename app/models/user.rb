class User < ActiveRecord::Base
  devise :registerable, :validatable, :database_authenticatable, :rememberable,
    :recoverable, :trackable

  has_many :wikis, :foreign_key => :owner_id

  attr_accessible :email, :password, :password_confirmation, :remember_me

  after_create :create_first_wiki

  protected
    def create_first_wiki
      wikis.create(:name => "Misteriously Unnamed Wiki")
    end
end
