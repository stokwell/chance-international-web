require 'carrierwave'
require 'carrierwave/storage/fog'


CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws',
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id:ENV["AWS_ACCESS_KEY_ID"],
        aws_secret_access_key:ENV["AWS_SECRET_ACCESS_KEY"],
        region:'eu-central-1'
      }
      config.fog_directory =ENV["AWS_S3_BUCKET"]
    end
  end

  if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws',
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: "AWS_ACCESS_KEY_ID",
        aws_secret_access_key: "AWS_SECRET_ACCESS_KEY",
        region:'eu-central-1'
      }
      config.fog_directory = "AWS_S3_BUCKET"
    end
  end


end