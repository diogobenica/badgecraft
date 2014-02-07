class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :text
      t.references :badge, index: true

      t.timestamps
    end
  end
end
