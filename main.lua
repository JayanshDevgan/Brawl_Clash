function love.load()
    local iconData = love.image.newImageData("images/game.png")
    love.window.setIcon(iconData)

    math.randomseed(os.time())

    local randomIndex = tostring(math.random(1, 5))
    local backgroundPath = "images/background/" .. randomIndex .. ".jpeg"
    
    -- Print the generated path for debugging
    print("Trying to load background image from: " .. backgroundPath)

    local imageInfo = love.filesystem.getInfo(backgroundPath)

    if imageInfo then
        background = love.graphics.newImage(backgroundPath)
    else
        error("Image not found: " .. backgroundPath)
    end
end

function love.draw()
  if background then
      love.graphics.draw(background, 0, -600) 
  else
      love.graphics.print("Background image not loaded!", 10, 10)
  end
end

function love.update(dt)
  
end

function love.quit()
end
