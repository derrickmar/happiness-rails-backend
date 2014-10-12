class CreateNotifs < ActiveRecord::Migration
  def change
    create_table :notifs do |t|
      t.text :desc
      t.boolean :default, :default => false

      t.timestamps
    end
  end
end
