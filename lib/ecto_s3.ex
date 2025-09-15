defmodule EctoS3 do
  @moduledoc """
  Documentation for `EctoS3`.
  """
  alias EctoS3.S3UploadedOjbect

  @doc """
  Hello world.

  ## Examples

      iex> EctoS3.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Upload the file to the S3 and get back the ID we added it as
  the ID is a ULID which makes sure the item is always unique and idk stuff
  """
  def upload_file_to_db_and_s3(bucket_name, file_name, file_content) do
    new_s3_obj = %S3UploadedOjbect{name: file_name}
    {:ok, new_s3_obj} = new_s3_obj |> S3UploadedObject.Repo.insert()

    the_id = new_s3_obj.id
    ExAws.S3.put_object(bucket_name, the_id, file_content) |> ExAws.request!()
  end
end
