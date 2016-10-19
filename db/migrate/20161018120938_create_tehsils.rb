class CreateTehsils < ActiveRecord::Migration[5.0]
  def change
    create_table :tehsils do |t|
    	t.string :name
    	t.references :district, foreign_key: true, index: true

      t.timestamps
    end
  end
end
