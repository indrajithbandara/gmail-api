require 'gmail'

username = "your-email"
password = "your-password"

gmail = Gmail.connect(username, password)
puts "gmail login"
gmail.deliver do
  to "dvddcrz@gmail.com"
  subject "Having fun in Puerto Rico!"
  text_part do
    body "Text of plaintext message."
  end
end

puts "email sent"
gmail.logout
puts "gmail logout"