class AddCellPhoneToSurveyUsers < ActiveRecord::Migration
  def change
    add_column :survey_users, :phone, :string
  end
end
