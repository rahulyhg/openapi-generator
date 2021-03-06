# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenAPIPetstore.Model.MixedPropertiesAndAdditionalPropertiesClass do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uuid",
    :"dateTime",
    :"map"
  ]

  @type t :: %__MODULE__{
    :"uuid" => String.t | nil,
    :"dateTime" => DateTime.t | nil,
    :"map" => %{optional(String.t) => Animal} | nil
  }
end

defimpl Poison.Decoder, for: OpenAPIPetstore.Model.MixedPropertiesAndAdditionalPropertiesClass do
  import OpenAPIPetstore.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"map", :map, OpenAPIPetstore.Model.Animal, options)
  end
end

