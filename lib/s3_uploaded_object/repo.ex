defmodule S3UploadedObject.Repo do
  use Ecto.Repo,
    otp_app: :ecto_s3,
    adapter: Ecto.Adapters.Postgres
end
