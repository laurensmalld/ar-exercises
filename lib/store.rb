class Store < ActiveRecord::Base

  has_many :employees

  validates :name, :length => { in: 3..100 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }

end
