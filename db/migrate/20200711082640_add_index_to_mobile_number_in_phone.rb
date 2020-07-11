class AddIndexToMobileNumberInPhone < ActiveRecord::Migration[6.0]
  def change
  	add_index :phones, :mobile_number
  end
end
