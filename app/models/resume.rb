class Resume < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader #tells rails to use this uploader for this model
  validates :name, presence: true  #make sure the owner's name is present
end
