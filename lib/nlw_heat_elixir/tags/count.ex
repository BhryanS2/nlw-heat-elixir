defmodule NlwHeatElixir.Tags.Count do
  alias NlwHeatElixir.Messages.Get

  def call do
    Get.today_messages()
    |> Task.async_stream(&countWord(&1.message))
    |> Enum.reduce(%{}, &sum_values(&1, &2))

    # fn elem, acc -> sum_values(elem, acc) end
  end

  defp countWord(message) do
    message
    |> String.split()
    |> Enum.frequencies()
  end

  defp sum_values({:ok, map}, map2) do
    Map.merge(map, map2, fn _key, value, value2 ->
      value + value2
    end)
  end
end
