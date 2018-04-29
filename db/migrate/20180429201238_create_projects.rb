class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.column :price, :decimal
      t.column :name, :string
    end
  end
end
