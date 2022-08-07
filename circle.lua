local pd <const> = playdate
local gfx <const> = pd.graphics

class('Circle').extends(gfx.sprite)

function Circle:init(x, y, radius)
    Circle.super.init(self)
    self:moveTo(x, y)
    local circleImage = gfx.image.new(radius * 2, radius * 2)
    gfx.pushContext(circleImage)
	gfx.fillCircleAtPoint(radius,radius,radius)
    gfx.popContext()
    self:setImage(circleImage)
end