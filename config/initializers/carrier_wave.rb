if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIX7PTKX7TOT5JCTA'],
      :aws_secret_access_key => ENV['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'],
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end

