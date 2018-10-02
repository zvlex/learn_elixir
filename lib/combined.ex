defmodule Combined do
  import Convert

  def height_to_mph(meters) do
    Drop.fall_velocity(:earth, meters)
      |> mps_to_mph
  end
end
