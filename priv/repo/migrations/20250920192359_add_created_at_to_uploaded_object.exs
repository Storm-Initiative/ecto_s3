defmodule S3UploadedObject.Repo.Migrations.AddCreatedAtToUploadedObject do
  use Ecto.Migration

  def change do
    alter table(:s3_uploaded_objects) do
      add :inserted_at, :utc_datetime, default: fragment("NOW()")
      add :updated_at, :utc_datetime, default: fragment("NOW()")
    end
  end
end
