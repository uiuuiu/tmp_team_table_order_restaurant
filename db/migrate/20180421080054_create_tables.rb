class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :table_code
      t.string :table_name
      t.text   :description
      t.text   :content

      t.timestamps
    end
  end
end
