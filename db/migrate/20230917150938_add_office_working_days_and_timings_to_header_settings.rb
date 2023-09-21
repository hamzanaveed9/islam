class AddOfficeWorkingDaysAndTimingsToHeaderSettings < ActiveRecord::Migration[6.1]
  def change
    add_column :header_settings, :office_working_days, :string
    add_column :header_settings, :timings, :string
    add_column :header_settings, :phone1, :string
    add_column :header_settings, :phone2, :string
    add_column :header_settings, :email, :string
  end
end
