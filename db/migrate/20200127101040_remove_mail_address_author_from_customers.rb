class RemoveMailAddressAuthorFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :mail_address, :string
  end
end
