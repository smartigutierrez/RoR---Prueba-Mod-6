class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_one_attached :avatar
  validates_presence_of :avatar

  enum :role, [:visit, :admin]
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  end
