class Report
  @queue = :reports

  def self.perform
    User.all.each { |user| Contact.welcome_maguila(user.email).deliver }
  end
end

