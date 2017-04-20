CarrierWave.configure do |config|
if Rails.env.production?
#    config.storage = :fog
#    config.fog_credentials = {
#      :provider               => 'AWS',                        # required
#      :aws_access_key_id      => ENV['ACCESS_KEY'],                        # required
#      :aws_secret_access_key  => ENV['SECRET_KEY'],                        # required
#      :region                 => 'ap-northeast-1'                  # optional, defaults to 'us-east-1'
      #:host                   => 's3.example.com',             # optional, defaults to nil
      #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
#          }
#    config.fog_directory  = 'slhome'                     # require
#config.fog_public     = false                                   # optional, defaults to true
#    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.storage = :ftp
  config.ftp_host = "slboard.cdn3.cafe24.com"
  config.ftp_port = 21
  config.ftp_user = "slboard"
  config.ftp_passwd = "secret"
  config.ftp_folder = "www"
  config.ftp_url = "http://slboard.cdn3.cafe24.com"
else
  config.storage = :ftp
  config.ftp_host = "iup.cdn3.cafe24.com"
  config.ftp_port = 21
  config.ftp_user = "sleepinglion"
  config.ftp_passwd = "jjh30750"
  config.ftp_folder = "www"
  config.ftp_url = "http://iup.cdn3.cafe24.com"

  #
  #  config.storage = :file
end

end
