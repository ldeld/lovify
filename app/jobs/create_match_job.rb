class CreateMatchJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Match.create(user_1_id: args[0][:user_1_id], user_2_id: args[0][:user_2_id], score: 0, hide: false)
  end
end
