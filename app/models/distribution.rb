# == Schema Information
#
# Table name: distributions
#
#  id                                     :integer      not null, primary key
#  key_code                               :string       not null
#  msa                                    :string       not null
#  year                                   :integer      not null
#  mean                                   :decimal      not null
#  std_dev                                :decimal      not null
#  created_at                             :datetime     not null
#  updated_at                             :datetime     not null

class Distribution < ActiveRecord::Base  
  # Associations
  #----------------------------------------------------------------------------

  # Accessible Methods
  #----------------------------------------------------------------------------
  attr_accessible :key_code, :msa, :year, :mean, :std_dev

  # Validations
  #----------------------------------------------------------------------------
  validates :key_code, :presence => true
  validates :msa, :presence => true
  validates :year, :presence => true
  validates :mean, :presence => true
  validates :std_dev, :presence => true

  # Public Methods
  #----------------------------------------------------------------------------
  private
end