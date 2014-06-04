class Thing < ActiveRecord::Base

  validates :name, length: { minimum: 3, maximum: 249 }
  validates :description, length: { minimum: 1, maximum: 500 }
  validates :description, presence: true

end
