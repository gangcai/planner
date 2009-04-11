class Project < ActiveRecord::Base
  
  #require "validates_date_time"
  has_many :tasks,:order=>'created_at DESC',:dependent=>:destroy
  has_many :results,:order=>'created_at DESC',:dependent=>:destroy

  validates_uniqueness_of :name,:message=>":This project already existed, please choose another one."
  validates_length_of :name,:minimum=>2,:too_short=>":The size of project name is at least {{count}}"
  #validates_confirmation_of :begtime,:date
  validates_date :begtime
  validates_date :endtime
  
end
