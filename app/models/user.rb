class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable and :activatable
  devise :registerable, :authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :name, :username, :bio, :phone, :website, :gender, :user_id, :description, :image, :avatar
  has_many :posts, :dependent => :destroy
  mount_uploader :avatar, AvatarUploader

  #User Avatar validation
  validates_integrity_of :avatar
  validates_processing_of :avatar
end
