Bird = {
    render = function(self)
        love.graphics.draw(self.image, self.x, self.y)
    end,
}

function Bird:init()
    self.image = love.graphics.newImage('bird.png')
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
    self.x = VIRTUAL_WIDTH / 2 - (self.width / 2)
    self.y = VIRTUAL_HEIGHT / 2 - (self.height / 2)

    o = {}
    self.__index = self
    setmetatable(o, self)
    return o
end
