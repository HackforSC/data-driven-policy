# == Schema Information
#
# Table name: bea_variable_distributions
#
#  id                                     :integer      not null, primary key
#  key_code                               :string       not null
#  year                                   :integer      not null
#  min                                    :decimal      not null
#  min_trim                               :decimal      not null
#  max                                    :decimal      not null
#  max_trim                               :decimal      not null
#  num_outliers                           :integer      not null
#  mean                                   :decimal      not null
#  mean_trim                              :decimal      not null
#  std_dev                                :decimal      not null
#  std_dev_trim                           :decimal      not null
#  created_at                             :datetime     not null
#  updated_at                             :datetime     not null

class BeaVariableDistribution < ActiveRecord::Base  
  # Associations
  #----------------------------------------------------------------------------

  # Accessible Methods
  #----------------------------------------------------------------------------
  attr_accessible :key_code, :year, 
                  :min, :min_trim, :max, :max_trim, :num_outliers,
                  :mean, :mean_trim, :std_dev, :std_dev_trim 

  # Validations
  #----------------------------------------------------------------------------
  validates :key_code, :presence => true
  validates :year, :presence => true
  validates :min, :presence => true
  validates :min_trim, :presence => true
  validates :max, :presence => true
  validates :max_trim, :presence => true
  validates :num_outliers, :presence => true
  validates :mean, :presence => true
  validates :mean_trim, :presence => true
  validates :std_dev, :presence => true
  validates :std_dev_trim, :presence => true

  # Public Methods
  #----------------------------------------------------------------------------
  private
end