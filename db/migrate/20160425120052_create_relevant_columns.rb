class CreateRelevantColumns < ActiveRecord::Migration
  def change
	  add_column :users, :has_persona, :boolean, default: false
	  add_column :users, :is_developer, :boolean, default: false

	  # Link to user's personal page - external
	  # More relevant for developers
	  add_column :users, :personal_page, :string
	  add_column :persona_apps, :archive_id, :string
	  add_column :persona_apps, :app_screenshot, :string
	  drop_table :app_archives
	  drop_table :screenshots
  end
end
