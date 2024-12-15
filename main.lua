local function newButton(text, fn) 
    return { 
        text = text,
        fn = fn,
        now = false,
        last = false
    }
end

local buttons = {}
local font = nil
local currentScene = "menu" 
local background = nil

function love.load()
    local iconData = love.image.newImageData("images/game.png")
    love.window.setIcon(iconData)

    font = love.graphics.newFont(32)

    table.insert(buttons, newButton("Play", function() switchScene("gameModeSelection") end))
    table.insert(buttons, newButton("Settings", function() switchScene("settings") end))
    table.insert(buttons, newButton("Exit", function() love.event.quit(0) end))
end

function loadBackground()
    math.randomseed(os.time())
    local randomIndex = tostring(math.random(1, 5))
    local backgroundPath = "images/background/" .. randomIndex .. ".jpeg"
    
    print("Trying to load background image from: " .. backgroundPath)

    local imageInfo = love.filesystem.getInfo(backgroundPath)

    if imageInfo then
        background = love.graphics.newImage(backgroundPath)
    else
        error("Image not found: " .. backgroundPath)
    end
end

function switchScene(scene)
    currentScene = scene
    if currentScene == "game" then
        loadBackground()
    end
end

function love.draw()
    local WINDOW_WIDTH, WINDOW_HEIGHT = love.graphics.getWidth(), love.graphics.getHeight()

    if currentScene == "menu" then
        drawMenu(WINDOW_WIDTH, WINDOW_HEIGHT)
    elseif currentScene == "game" then
        drawGame(WINDOW_WIDTH, WINDOW_HEIGHT)
    elseif currentScene == "settings" then
        drawSettings(WINDOW_WIDTH, WINDOW_HEIGHT)
    elseif currentScene == "gameModeSelection" then
        drawGameModeSelection(WINDOW_WIDTH, WINDOW_HEIGHT)
    elseif currentScene == "characterSelection" then
        drawCharacterSelection(WINDOW_WIDTH, WINDOW_HEIGHT)
    elseif currentScene == "emptyScene" then
        drawEmptyScene(WINDOW_WIDTH, WINDOW_HEIGHT)
    end
end

function drawMenu(WINDOW_WIDTH, WINDOW_HEIGHT)
    local button_width, button_height = WINDOW_WIDTH / 6, WINDOW_HEIGHT / 12
    local margin = 16
    local cursor_y = 0

    for i, button in ipairs(buttons) do
        button.last = button.now

        local bx = (WINDOW_WIDTH / 2) - (button_width / 2)
        local by = (WINDOW_HEIGHT / 2) - ((#buttons * (button_height + margin)) / 2) + cursor_y 

        local mx, my = love.mouse.getPosition()
        local hover = mx > bx and mx < bx + button_width and
                      my > by and my < by + button_height

        button.now = love.mouse.isDown(1)
        if button.now and not button.last and hover then 
            button.fn()
        end

        local color = hover and {0.3, 0.0, 0.0, 1.0} or {0.3, 0, 0, 0.8}

        love.graphics.setColor(color)
        love.graphics.rectangle("fill", bx, by, button_width, button_height)

        love.graphics.setColor(0, 0, 0, 1)
        
        local text_width, text_height = font:getWidth(button.text), font:getHeight(button.text)
        love.graphics.print(
            button.text,
            font,
            (WINDOW_WIDTH / 2) - (text_width / 2), by + (button_height / 2) - (text_height / 2)
        )

        cursor_y = cursor_y + (button_height + margin)
    end
end

function drawGame(WINDOW_WIDTH, WINDOW_HEIGHT)
    love.graphics.setColor(1, 1, 1)
    if background then
        love.graphics.draw(background, 0, -600) 
    else
        love.graphics.print("Background image not loaded!", 10, 10)
    end
end

function drawSettings(WINDOW_WIDTH, WINDOW_HEIGHT)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Settings Scene", WINDOW_WIDTH / 2 - 50, WINDOW_HEIGHT / 2)
end

function drawGameModeSelection(WINDOW_WIDTH, WINDOW_HEIGHT)
    local button_width, button_height = WINDOW_WIDTH /  6, WINDOW_HEIGHT / 12
    local margin = 16
    local cursor_y = 0

    local modeButtons = {
        newButton("Single Player", function() switchScene("characterSelection") end),
        newButton("Local Multiplayer", function() switchScene("emptyScene") end)
    }

    for i, button in ipairs(modeButtons) do
        button.last = button.now

        local bx = (WINDOW_WIDTH / 2) - (button_width / 2)
        local by = (WINDOW_HEIGHT / 2) - ((#modeButtons * (button_height + margin)) / 2) + cursor_y 

        local mx, my = love.mouse.getPosition()
        local hover = mx > bx and mx < bx + button_width and
                      my > by and my < by + button_height

        button.now = love.mouse.isDown(1)
        if button.now and not button.last and hover then 
            button.fn()
        end

        local color = hover and {0.3, 0.0, 0.0, 1.0} or {0.3, 0, 0, 0.8}

        love.graphics.setColor(color)
        love.graphics.rectangle("fill", bx, by, button_width, button_height)

        love.graphics.setColor(0, 0, 0, 1)
        
        local text_width, text_height = font:getWidth(button.text), font:getHeight(button.text)
        love.graphics.print(
            button.text,
            font,
            (WINDOW_WIDTH / 2) - (text_width / 2), by + (button_height / 2) - (text_height / 2)
        )

        cursor_y = cursor_y + (button_height + margin)
    end
end

function drawCharacterSelection(WINDOW_WIDTH, WINDOW_HEIGHT)
    local button_width, button_height = WINDOW_WIDTH / 6, WINDOW_HEIGHT / 12
    local margin = 16

    local startButton = newButton("Start Game", function() 
        switchScene("game") 
    end)

    startButton.last = startButton.now

    local bx = (WINDOW_WIDTH / 2) - (button_width / 2)
    local by = (WINDOW_HEIGHT / 2) - (button_height / 2)

    local mx, my = love.mouse.getPosition()
    local hover = mx > bx and mx < bx + button_width and
                  my > by and my < by + button_height

    startButton.now = love.mouse.isDown(1)
    if startButton.now and not startButton.last and hover then 
        startButton.fn()
    end

    local color = hover and {0.3, 0.0, 0.0, 1.0} or {0.3, 0, 0, 0.8}

    love.graphics.setColor(color)
    love.graphics.rectangle("fill", bx, by, button_width, button_height)

    love.graphics.setColor(0, 0, 0, 1)
    
    local text_width, text_height = font:getWidth(startButton.text), font:getHeight(startButton.text)
    love.graphics.print(
        startButton.text,
        font,
        (WINDOW_WIDTH / 2) - (text_width / 2), by + (button_height / 2) - (text_height / 2)
    )
end

function drawEmptyScene(WINDOW_WIDTH, WINDOW_HEIGHT)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Local Multiplayer", WINDOW_WIDTH / 2 - 150, WINDOW_HEIGHT / 2)
end

function love.update(dt)
  
end
