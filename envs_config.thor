class Set < Thor
  include Thor::Actions
  
  no_tasks do
    def copy_environment(new_environment)
      run("cp features/support/envs/env.rb.#{new_environment} features/support/env.rb")
    end
  end
  
  desc "headless", "Use Headless Chrome with Watir"
  def headless
    puts "Run cukes with Headless Chrome Selenium"
    copy_environment("headless")
  end

  desc "chrome", "Run cukes with Chrome Selenium"
  def chrome
    puts "Run cukes with Chrome Selenium"
    copy_environment("chrome")
  end

  desc "firefox", "Run cukes with Firefox Selenium"
  def firefox
    puts "Run cukes with Firefox Selenium"
    copy_environment("firefox")
  end

  desc "safari", "Run cukes with Safari Selenium"
  def safari
    puts "Run cukes with Safari Selenium"
    copy_environment("safari")
  end

  desc "edit", "Edit cukes with Chrome Selenium"
  def edit
    puts "Edit cukes with Chrome Selenium"
    copy_environment("edit")
  end
end