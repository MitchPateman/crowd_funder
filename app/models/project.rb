class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pledges
  has_many :rewards

  accepts_nested_attributes_for :rewards

  def deadline_past?
    if date.past?
      errors.add(:project, "The deadline has passed.")
    end
  end
end
