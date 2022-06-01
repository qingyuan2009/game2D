function love.load(arg)
  circle = {}
  circle.x = 100
  circle.y = 100
  circle.size = 50

  circle2 = {}
  circle2.x = 200
  circle2.y = 300
  circle2.size = 100
  number = 0

  score = 0
  timer = 0
  myFont = love.graphics.newFont(40)
end

function love.update(dt)
  --number = number + 1
  circle.y = circle.y + 1
end

function love.draw()
  --love.graphics.print(number)
  love.graphics.setColor(0, 0, 255)
  love.graphics.circle("fill", circle.x, circle.y, circle.size)
  love.graphics.circle("fill", circle2.x, circle2.y, circle2.size)
  love.graphics.setColor(255, 255, 255)
  love.graphics.setFont(myFont)
  love.graphics.print(score)
end

function love.mousepressed(x, y, button, isTouch)
  -- left click
  if button == 1 then
    if distanceBetween(circle.x, circle.y, x, y) < circle.size then
      score = score + 1
      --circle.x = math.random(circle.size, love.graphics.getWidth()-circle.size)
      --circle.y = math.random(circle.size, love.graphics.getHeight()-circle.size)
      circle.y = circle.y + 30
    end
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 + (x2-x1)^2)
end
