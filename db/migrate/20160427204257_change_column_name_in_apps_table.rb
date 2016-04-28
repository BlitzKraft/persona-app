class ChangeColumnNameInAppsTable < ActiveRecord::Migration
  def change
	  remove_column :persona_apps, :app_icon_url
	  add_column :persona_apps, :app_icon, :string
  end
end
