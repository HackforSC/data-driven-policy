class CreateDistributions < ActiveRecord::Migration
  def change
    create_table(:distributions) do |t|
      t.string :key_code,       :null => false
      t.string :msa,            :null => false
      t.integer :year,          :null => false
      t.decimal :mean,          :null => false
      t.decimal :std_dev,       :null => false

      t.timestamps
    end
  end
end