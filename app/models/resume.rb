class Resume < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :user_id, presence: true
  mount_uploader :attachment, AttachmentUploader
end
