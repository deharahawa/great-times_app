
s3 = Aws::S3::Resource.new(
      credentials: Aws::Credentials.new(ENV['ASIAXF6QHR5PCWTXS4TK'],  ENV['91AmvM7WRNA/2D62e6o+Oj4F8i2yJATHaIxEZLSG']),
      region: 'us-west-1'
    )

obj = s3.bucket(ENV['stage-greattimes-app']).object('key')