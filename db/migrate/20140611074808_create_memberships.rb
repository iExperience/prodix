class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :type
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
