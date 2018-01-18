class AddOmniauthToModels < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :provider, :string
    add_column :models, :uid, :string
    add_column :models, :image, :string
    add_column :models, :name, :string
  end
end
