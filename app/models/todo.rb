class Todo < ActiveRecord::Base
  attr_accessible :task, :priority
  validates_presence_of :task
end
