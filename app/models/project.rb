class Project < ActiveRecord::Base
  has_many :tasks
  has_many :memberships
  has_many :users, :through => :memberships

  #validates :name, presence: true, length: {minimum: 3}

  def self.search(query)
    if query
      Project.where("name LIKE '%#{query}%'")
    else
      all
    end
  end
end
