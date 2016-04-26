class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|

      t.timestamps null: false
    end
    add_column :persona_apps, :name, :string
    add_column :persona_apps, :description, :text
    # Icon image url string
    add_column :persona_apps, :icon, :string
  end
end
