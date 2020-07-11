class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.integer :mobile_number

      t.timestamps
    end
  end
end
