# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.public_key  ='6LdPqB0TAAAAAF53S1EVXtiaDyfQ4y67fBP-0peI'
  config.private_key = '6LdPqB0TAAAAAH6Lunsv5rPjI5qE_5K-vhKdJfQz'
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end
