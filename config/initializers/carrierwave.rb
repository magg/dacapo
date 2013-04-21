CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.s3_access_key_id = ENV['s3_access_key_id']
  config.s3_secret_access_key = ENV['s3_secret_access_key']
  config.s3_bucket = ENV['s3_bucket']
  
  
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      =>  ENV['s3_access_key_id'],                        
      :aws_secret_access_key  =>  ENV['s3_secret_access_key'],                   
      :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
      :host                   => 's3.example.com',             # optional, defaults to nil
      :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory  = ENV['s3_bucket']                           
    config.fog_public     = false                                   # optional, defaults to true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  
end
