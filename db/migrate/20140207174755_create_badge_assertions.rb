class CreateBadgeAssertions < ActiveRecord::Migration
  def change
    create_table :badge_assertions do |t|
      t.string :uid
      t.references :user, index: true
      t.references :badge, index: true

      t.timestamps
    end
  end
end
