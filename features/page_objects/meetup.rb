class Meetup
  include PageObject

  def past_events(count)
    @browser.first(class: 'meetup-past-events').all(class: 'fa-external-link').count.should == count.to_i
  end
  
  def upcoming_events(count)
    @browser.first(class: 'meetup-upcoming-events').all(class: 'fa-external-link').count.should == count.to_i
  end
end