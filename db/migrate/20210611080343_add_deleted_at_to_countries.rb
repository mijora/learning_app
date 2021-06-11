class AddDeletedAtToCountries < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :deleted_at, :datetime
  end
end
