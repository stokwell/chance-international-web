class Attachment < ApplicationRecord
  belongs_to :attachmentable, polymorphic: true, required: false
  mount_uploader :file, FileUploader
end
