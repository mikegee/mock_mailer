require 'spec_helper'

describe MockMailer do
  subject { MockMailer.new }

  it 'should capture message creation' do
    subject.some_message
    subject.messages.should include(:some_message)
    subject.deliveries.should_not include(:some_message)
  end

  it 'should capture message delivery' do
    subject.some_message.deliver
    subject.messages.should include(:some_message)
    subject.deliveries.should include(:some_message)
  end
end
