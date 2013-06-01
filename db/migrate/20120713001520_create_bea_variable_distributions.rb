class CreateBeaVariableDistributions < ActiveRecord::Migration
  def change
    create_table(:bea_variable_distributions) do |t|
      t.string :key_code,           :null => false
      t.integer :year,              :null => false
      t.decimal :min,               :null => false
      t.decimal :min_trim,          :null => false
      t.decimal :max,               :null => false
      t.decimal :max_trim,          :null => false
      t.integer :num_outliers,      :null => false
      t.decimal :mean,              :null => false
      t.decimal :mean_trim,         :null => false
      t.decimal :std_dev,           :null => false
      t.decimal :std_dev_trim,      :null => false

      t.timestamps
    end
  end
end