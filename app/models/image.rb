class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true, optional: true, required: false
  validates :file, presence: true
  mount_uploader :file, ImagesUploader
end
