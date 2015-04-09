class CreateRazishes < ActiveRecord::Migration
  def change
    create_table :razishes do |t|

      t.timestamps null: false
    end
  end
end
