# Aws.config.update({
#   region: 'us-east-1',
#   credentials: Aws::Credentials.new(ENV['ASIAXF6QHR5PCWTXS4TK'], ENV['91AmvM7WRNA/2D62e6o+Oj4F8i2yJATHaIxEZLSG']),
# })

# S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['stage-greattimes-app'])

s3 = Aws::S3::Resource.new(
      credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'],  ENV['AWS_SECRET_ACCESS_KEY']),
      region: 'us-west-1'
    )

    obj = s3.bucket(ENV['S3_BUCKET']).object('key')