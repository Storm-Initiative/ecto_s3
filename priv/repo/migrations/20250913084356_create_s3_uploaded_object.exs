defmodule S3UploadedObject.Repo.Migrations.CreateS3UploadedObject do
  use Ecto.Migration

  def change do
    create table(:s3_uploaded_objects, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
    end
  end
end
