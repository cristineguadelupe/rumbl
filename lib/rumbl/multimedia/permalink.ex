defmodule Rumbl.Multimedia.Permalink do
  @behaviour Ecto.Type

  def type, do: :id

  def cast(binary) when is_binary(binary) do
    case Integer.parse(binary) do
      {int, _} when int > 0 -> {:ok, int}
       _ -> :error
    end
  end

end
