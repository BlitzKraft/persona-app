class ImageArray < ActiveRecord::Migration
  def change
	remove_column :persona_apps, :app_screenshot
	add_column :persona_apps, :app_icon_url, :string
  end
end
