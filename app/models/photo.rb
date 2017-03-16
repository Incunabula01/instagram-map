class Photo < ActiveRecord::Base
	validates :thumbnail_url, :owner, :link, :presence => true

	def get_recent_media
		recent_media = Instagram.tag_recent_media('Baltimore')

		recent_media.each do |media|
			Photo.create(
				link: media.link,
				owner: media.caption.from.username,
				thumbnail_url: media.images.thumbnail.thumbnail_url
				)
		end
	end
end
