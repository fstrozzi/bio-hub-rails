ActiveMessaging::Gateway.define do |s|
  s.destination :scheduler, '/queue/scheduler'
end