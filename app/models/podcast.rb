class Podcast < ApplicationRecord

  mount_uploader :picture, PodcastUploader

  mount_base64_uploader :picture, PodcastUploader

  mount_uploader :audio, PodcastUploader

  mount_base64_uploader :audio, PodcastUploader
end
