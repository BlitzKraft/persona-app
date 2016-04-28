class AddStringToScreenshotsArchive < ActiveRecord::Migration
  def change
	  add_column :screenshots, :shot_id, :string
	  add_column :app_archives, :zip_id, :string
  end
end
