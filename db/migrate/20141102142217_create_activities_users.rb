class CreateActivitiesUsers < ActiveRecord::Migration
  def change
    create_table :activities_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :activity
    end
  end
end
