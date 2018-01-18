class AddExtraFieldsToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :phone_number, :string
    add_column :models, :description, :string
  end
end
