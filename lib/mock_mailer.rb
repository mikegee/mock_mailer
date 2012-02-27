require "mock_mailer/version"

class MockMailer

  attr_reader :messages, :deliveries

  def initialize
    @messages = []
    @deliveries = []
  end

  def method_missing(*args)
    message_name = args.shift
    @messages << message_name
    Message.new(message_name, @deliveries)
  end

  class Message
    def initialize(name, deliveries)
      @name = name
      @deliveries = deliveries
    end

    def deliver
      @deliveries << @name
    end
  end
end
