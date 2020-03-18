class AddBillingToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :billing, foreign_key: true
  end
end
