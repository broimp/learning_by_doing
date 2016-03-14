#!/usr/bin/env ruby

# Tractor
class Tractor
  attr_accessor(:fuel, :snow, :grass, :fence)

  def initialize(fuel = 0, snow = 0, grass = 0, fence = 0)
    @fuel = fuel
    @snow = snow
    @grass = grass
    @fence = fence
  end

  def change_tractor(condition)
    if condition == 1
      true
    else
      false
    end
  end

  def add_fuel
    change_tractor(@fuel)
  end

  def mount_blade
    change_tractor(@snow)
  end

  def mount_hog
    change_tractor(@grass)
  end

  def mount_drill
    change_tractor(@fence)
  end

  def work
    if @fuel + @snow + @grass + @fence >= 1
      'Go add fuel' if add_fuel
      'Go plow snow' if mount_blade
      'Go mow hay' if mount_hog
      'Go plant fence posts' if mount_drill
    else
      'Drink beer'
    end
  end
end
