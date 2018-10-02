defmodule Drop do
  import :math, only: [sqrt: 1]

  # def fall_velocity({planemo,distance}) when distance >= 0 do
  #   fall_velocity(planemo, distance)
  # end

  # defp fall_velocity(:earth, distance) when distance >= 0 do
  #   sqrt(2 * 9.8 * distance)
  # end

  # defp fall_velocity(:moon, distance) when distance >= 0 do
  #   sqrt(2 * 1.6 * distance)
  # end

  # defp fall_velocity(:mars, distance) when distance >= 0 do
  #   sqrt(2 * 3.71 * distance)
  # end

  def fall_velocity({planemo, distance}) when distance >= 0 do
    gravity = case planemo do
       :earth -> 9.8
       :moon -> 1.6
       :mars -> 3.71
        _ -> IO.puts "not implemented"
    end

    velocity = sqrt(2 * gravity * distance)

    if velocity > 20 do
      IO.puts "Look out below!"
    else
      IO.puts "Resonable..."
    end

    velocity
  end
end
