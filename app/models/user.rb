class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bills, class_name: "Bill", foreign_key: "created_by"
  has_many :items, class_name: "Item", foreign_key: "created_by"
end
