class CreatePageSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :page_settings do |t|
      t.string :page_name
      t.string :url_video
      t.string :hero_title
      t.text :hero_paragraph

      t.timestamps
    end
  end
end
