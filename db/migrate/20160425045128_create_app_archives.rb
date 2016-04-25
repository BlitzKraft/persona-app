class CreateAppArchives < ActiveRecord::Migration
  def change
    create_table :app_archives do |t|

      t.timestamps null: false
    end
  end
end
