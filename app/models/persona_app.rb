class PersonaApp < ActiveRecord::Base
	belongs_to :user
	has_one :app_archive
	has_many :screenshots
end
