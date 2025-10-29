# Exercise 5

class LaunchDiscussionWorkflow

  def initialize(discussion, host, participants_email_string)
    @discussion = discussion
    @host = host
    @participants_email_string = participants_email_string
    @participants = DiscussionParticipants.new(participants_email_string)
  end

  # Expects @participants to be filled with User objects
  def run
    return unless valid? # Check @participants object to see if its array is full
    run_callbacks(:create) do
      ActiveRecord::Base.transaction do
        discussion.save!
        create_discussion_roles!
        @successful = true
      end
    end
  end
end

class DiscussionParticipants(participants_email_string)
  def initialize
    @participant_list = []
    return if @participants_email_string.blank?
    @participants_email_string.split.uniq.map do |email_address|
      @participants.append(User.create(email: email_address.downcase, password: Devise.friendly_token))
    end
  end
end

  # ...


discussion = Discussion.new(title: "fake", ...)
host = User.find(42)
participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.run