class AddUserIdToPApp < ActiveRecord::Migration
  def change
	  add_column :persona_apps, :user_id, :integer
  end
end
