class Report
  @queue = :reports

  def self.perform
    User.all.each { |user| Contact.welcome_maguila(user.email).deliver }
  end
end

# bundle exec resque-web config/initializers/resque.rb

# VERBOSE=true QUEUE=jobs rake environment resque:work

# bundle exec rake resque:scheduler

# ps -e -o pid,command | grep [r]esque

# kill -9 4833
