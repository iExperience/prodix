class Project < ActiveRecord::Base
  has_many :tasks
  has_many :memberships
  has_many :users, :through => :memberships

  validates :name, presence: true, length: {minimum: 3}
end
