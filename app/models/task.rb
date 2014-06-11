class Task < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :users
  # has_many :subtasks, class_name: 'Task'
  # belongs_to :supertask, class_name: 'Task'

  validates :name, presence: true, length: {minimum: 3}
end
