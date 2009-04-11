class Task < ActiveRecord::Base
 # before_filter :login_required , this should be put in the controller
  belongs_to :project
  has_one :calendar

  validates_uniqueness_of :name,:message=>"This task have already existed"
  validates_length_of :name,:minimum=>2,:too_short=>"should have at least {{count}} character"
  validates_date :begtime
  validates_date :endtime
end
