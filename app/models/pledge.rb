class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validate :is_project_available

  def is_project_available
    if self.project.deadline_past?
      errors.add(:project, "The deadline has passed.")
    end
  end
end
