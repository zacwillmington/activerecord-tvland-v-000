class Show < ActiveRecord::Base
  belongs_to :network
  has_many :actors
  has_many :characters, through: :actor
end
