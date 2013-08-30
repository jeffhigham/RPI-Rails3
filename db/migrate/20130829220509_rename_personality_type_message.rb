class RenamePersonalityTypeMessage < ActiveRecord::Migration
  def up
  	rename_column :personality_types, :message, :public_description
  	change_column :personality_types, :public_description, :text
  	add_column :personality_types, :private_description, :text
  end

  def down
  end
end
