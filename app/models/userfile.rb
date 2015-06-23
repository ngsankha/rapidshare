class Userfile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :blob, BlobUploader
end
