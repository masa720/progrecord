class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :negotiations
  has_many :continuations
  has_many :comments
  has_many :cnt_comments

  def view_last_name_and_first_name
    self.last_name + " " + self.first_name
  end
end
