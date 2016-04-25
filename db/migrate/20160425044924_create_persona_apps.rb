class CreatePersonaApps < ActiveRecord::Migration
  def change
    create_table :persona_apps do |t|

      t.timestamps null: false
    end
  end
end
