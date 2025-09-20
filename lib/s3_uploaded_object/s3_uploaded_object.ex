defmodule EctoS3.S3UploadedOjbect do
  use Ecto.Schema

  @primary_key {:id, Ecto.ULID, autogenerate: true}
  @foreign_key_type Ecto.ULID

  schema "s3_uploaded_objects" do
    field :name, :string

    timestamps()
  end
end
