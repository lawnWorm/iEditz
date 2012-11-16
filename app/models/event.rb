class Event < ActiveRecord::Base
  attr_accessible :title, :description, :rules, :start_date, :end_date
end
