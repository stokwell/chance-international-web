class Post < ApplicationRecord
  validates :title, :body,  :presence => true
  has_many :attachments, as: :attachmentable, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :attachments, :images, allow_destroy: true, reject_if: :all_blank
  mount_uploader :cover, CoverUploader
end
