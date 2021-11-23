class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    PostmailMailer.welcome("chindalapavan2598@gmail.com").deliver_now
    
  end
end
