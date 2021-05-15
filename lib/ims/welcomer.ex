defmodule Ims.Welcome do
  #  --data---->[Module.function]-data_modified-->[Module.function2]-->Result
  # Receive name and age - if user has name x and age x, receives a special msg
  # if user is age y -> receives a normal msg
  # if user is age w -> returns an error
  # Check for wrong user names

  def welcome(params) do
    name = params["name"]
    age = params["age"]

    params["name"]
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  # private defp - receives 2 params but sent just one above because |>
  defp evaluate("simba", "17") do
    "Special"
  end

  defp evaluate(name, age) do
    "Not Special #{name}"
  end
end
