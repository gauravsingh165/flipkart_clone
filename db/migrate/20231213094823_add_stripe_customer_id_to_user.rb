class AddStripeCustomerIdToUser < ActiveRecord::Migration[7.1]
  def up
    add_column :users, :stripe_account_id, :string
    add_column :users, :stripe_charges_enabled, :boolean
    add_column :users, :stripe_details_submitted, :boolean
    add_column :users, :stripe_eventually_due, :string, array: true
  end

  def down
    remove_column :users, :stripe_account_id
    remove_column :users, :stripe_charges_enabled
    remove_column :users, :stripe_details_submitted
    remove_column :users, :stripe_eventually_due
  end
end
