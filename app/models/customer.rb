class Customer < ApplicationRecord
  has_many :negotiations
  belongs_to :category

  validates :name, presence: true
  validates :category_id, presence: true
  validates :person, presence: true
  validates :mobile, format: {
                      with: /A0[789]0\d{8}z/
                    }, allow_blank: true

  validates :tel, format: {
                    with: /A0\d{9,10}z/
                  }, allow_blank: true

  validates :fax, format: {
                    with: /A0\d{9,10}z/
                  }, allow_blank: true

  validates :email, format: {
                      with: /\A\S+@\S+\.\S+\z/
                    }, allow_blank: true
end
