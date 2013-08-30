class PersonalityType < ActiveRecord::Base
	attr_accessible :name, :title, :public_description, :private_description, :video_url
	belongs_to :survey
end
