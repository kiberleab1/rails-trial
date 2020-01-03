class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.references :project,index: true

      t.timestamps
    end
  end
end
