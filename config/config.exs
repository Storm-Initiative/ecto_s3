import Config

config :ecto_s3, S3UploadedObject.Repo,
  database: "ecto_s3_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :ecto_s3, ecto_repos: [S3UploadedObject.Repo]

config :ex_aws,
  debug_requests: true,
  json_codec: Jason,
  access_key_id: {:system, "AWS_ACCESS_KEY_ID"},
  secret_access_key: {:system, "AWS_SECRET_ACCESS_KEY"}

config :ex_aws, :s3,
  scheme: "https://",
  host: "fly.storage.tigris.dev",
  region: "auto"
