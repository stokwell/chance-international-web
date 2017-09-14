class Project < ApplicationRecord
  has_many :attachments, as: :attachmentable, dependent: :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank


  mount_uploader :project_cover, CoverUploader

  def self.next_projects
    where("project_start > :today", today: Date.today)
  end
end
