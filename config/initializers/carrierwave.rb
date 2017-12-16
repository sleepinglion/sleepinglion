CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :ftp
    config.ftp_host = "sleepinglion.cdn3.cafe24.com"
    config.ftp_port = 21
    config.ftp_user = "sleepinglion"
    config.ftp_passwd = "jjh30750"
    config.ftp_folder = "/www"
    config.ftp_url = "https://sleepinglion.cdn3.cafe24.com"
    config.ftp_passive = true
  else
    config.storage = :file
  end
end
