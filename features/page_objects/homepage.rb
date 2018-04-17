class HomePage
  include PageObject

  def sign_up_with_meetup
    @browser.first(link: 'sign up with Meetup')
  end
end