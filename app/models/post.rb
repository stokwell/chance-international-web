class Post < ApplicationRecord
  validates :title, :body,  :presence => true
  has_many :attachments, as: :attachmentable, dependent: :destroy
  accepts_nested_attributes_for :attachments
end
