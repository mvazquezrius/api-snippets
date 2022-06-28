require 'twilio-ruby'

response = Twilio::TwiML::VoiceResponse.new
response.connect do |connect|
    connect.conversation(service_instance_sid: 'ISxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', record: 'record-from-answer', recording_status_callback: 'https://your-recording-status-callback-url.com/')
end

puts response
