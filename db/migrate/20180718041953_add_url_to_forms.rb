class AddUrlToForms < ActiveRecord::Migration[5.0]
  def change
    add_column :forms, :url, :string
  end
end
