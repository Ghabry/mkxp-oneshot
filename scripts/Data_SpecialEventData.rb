class SpecialEventData
  attr_reader :flags
  attr_reader :collision

  def initialize(flags, collision)
    @flags = flags
    @collision = collision
  end

  def self.get(name)
    return SPECIAL_EVENTS[name]
  end

  SPECIAL_EVENTS = {
    :bigpool => SpecialEventData.new(
      [:bottom],
      [[-4, -7], [-3, -7], [-2, -7], [-1, -7], [0, -7], [1, -7], [2, -7], [3, -7], [4, -7], #top
       [-5, -6], [-5, -5], [-5, -4], [5, -6], [5, -5], [5, -4], #sides
       [-4, -3], [-3, -3], [3, -3], [4, -3], #bottom upper
       [-2, -2], [-1, -2], [0, -2], [1, -2], [2, -2]] #bottom lower
    ),
    :smallpool => SpecialEventData.new(
      [],
      [[-1, 0], [0, 0], [1, 0],
       [-2, -1],[-1, -1], [0, -1], [1, -1],[2, -1]]
    ),
    :specialpool => SpecialEventData.new(
      [],
      [[-1, 0], [0, 0], [1, 0],
       [-1, -1], [0, -1], [1, -1]]
    ),
    :generator => SpecialEventData.new(
      [:bottom],
      [[-3, -1], [-2, -1], [-1, -1], [0, -1], [1, -1], [2, -1], [3, -1], # lowest row
       [-3, -2], [-2, -2], [-1, -2], [0, -2], [1, -2], [2, -2], [3, -2], # low row
       [-2, -3], [-1, -3], [0, -3], [1, -3], [2, -3], # high row
       [-1, -4], [0, -4], [1, -4]] # highest row
    ),
    :machine => SpecialEventData.new(
      [],
      [[-1, 0], [0, 0], [1, 0]]
    ),
    :glitch => SpecialEventData.new(
      [],
      [[0, 0], [0, -1]]
    ),
    :bed => SpecialEventData.new(
      [:bottom],
      [[0, 0], [0, -1]],
    ),
    :vendor => SpecialEventData.new(
      [],
      [[-1, 0], [0, 0], [1, 0]],
    ),
    :lens => SpecialEventData.new(
      [],
      [[0, -1], [0, 0]],
    ),
  }
end
