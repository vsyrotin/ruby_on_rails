class Ticket < ActiveRecord::Base
  belongs_to :status
  belongs_to :client
  belongs_to :user
  has_many :comments
end
