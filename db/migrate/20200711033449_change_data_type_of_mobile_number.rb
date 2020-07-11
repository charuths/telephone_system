class ChangeDataTypeOfMobileNumber < ActiveRecord::Migration[6.0]
  def change
  	change_column :phones, :mobile_number, :bigint
  end
end
