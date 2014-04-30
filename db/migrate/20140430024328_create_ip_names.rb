class CreateIpNames < ActiveRecord::Migration
  def change
    create_table :ip_names do |t|
      t.string :name
      t.boolean :is_valid

      t.timestamps
    end
  end
end
