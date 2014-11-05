class Activity < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :user
  
  def self.weekend_dates
    if Date.today.wday == 1
      [Date.today+5, Date.today+6]
    elsif Date.today.wday == 2
      [Date.today+4, Date.today+5]
    elsif Date.today.wday == 3
      [Date.today+3, Date.today+4]
    elsif Date.today.wday == 4
      [Date.today+2, Date.today+3]
    elsif Date.today.wday == 5
      [Date.today+1, Date.today+2]
    elsif Date.today.wday == 6
      [Date.today+1, Date.today.next_week+5]
    else
      [Date.today+6, Date.today+7]
    end
  end 
  
  def self.total(val)
    a = []
    Activity.where(date: Activity.weekend_dates[val]).each do|s|
      a << s.users.count
    end
    a.sum
  end
end
