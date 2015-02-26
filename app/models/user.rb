class User < ActiveRecord::Base
	has_one :venue 
	has_and_belongs_to_many :concerts
	has_many :requests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
