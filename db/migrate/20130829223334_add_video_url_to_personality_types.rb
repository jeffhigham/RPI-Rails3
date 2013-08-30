class AddVideoUrlToPersonalityTypes < ActiveRecord::Migration
  def change
    add_column :personality_types, :video_url, :string
  end
end
