class RenameNotificationFields < ActiveRecord::Migration
  def change
    change_table :notifications do |t| # rubocop:disable Rails/ReversibleMigration
      t.rename :to_id, :recipient_id
      t.rename :from_id, :sender_id
    end
  end
end
