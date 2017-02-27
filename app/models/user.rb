class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
validates :name, presence: true, allow_nil: true
  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
