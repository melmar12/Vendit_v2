class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.text :message
      t.boolean :show

      t.timestamps null: false
    end
  end
end
