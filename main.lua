local creatures = require("creatures")

local function newButton(text, fn) 
    return { 
        text = text,
        fn = fn,
        now = false,
        last = false
    }
end 

local buttons = {}

local font, background, randomIndex = nil, nil, nil
local currentScene = "menu" 

local all_creatures, codex_creatures, ai_codex_creatures = {}, {}, {}

local function drawCreaturesNames(x, y, creature)
	fontSize = 32
	spacing  = 10

	local font = love.graphics.newFont(fontSize)
	love.graphics.setFont(font)
	love.graphics.setColor(0, 0, 0)

	love.graphics.print(creature.name, x, y * (fontSize + spacing))
	love.graphics.setFont(love.graphics.getFont())
	love.graphics.setColor(1, 1, 1)
end

local function drawProgressBar(x, y, current, max, color)
    local width = 400
    local height = 30
    local progress = current / max

    local borderThickness = 3

    local radius = 8

    love.graphics.setColor(0.2, 0.2, 0.2)
    love.graphics.rectangle("fill", x, y, width, height, radius, radius)

    local r, g, b = unpack(color)
    love.graphics.setColor(r, g, b, 0.3)
    love.graphics.rectangle("line", x - 2, y - 2, width + 4, height + 4, radius, radius)

    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.setLineWidth(borderThickness)
    love.graphics.rectangle("line", x, y, width, height, radius, radius)

    local gradientColor = {r * 0.8, g * 0.8, b * 0.8}
    love.graphics.setColor(gradientColor)
    love.graphics.rectangle("fill", x, y, width * progress, height, radius, radius)

    love.graphics.setColor(r, g, b, 0.6) 
    love.graphics.rectangle("fill", x, y, width * progress, height / 2, radius, radius)

    love.graphics.setColor(r, g, b, 0.3) 
    love.graphics.rectangle("fill", x - 2, y - 2, (width * progress) + 4, height + 4, radius, radius)
end

local function drawAttacks(X, Y, attacks)
	local boxWidth, boxHeight, padding = 60, 80, 10
	local keys = { "Q", "W", "E", "R", "T" }

	for _, attack in ipairs(attacks) do
		local x = X + (_ - 1) * (boxWidth + padding)
		local y = Y

		love.graphics.setColor(0.2, 0.2, 0.2, 1)
		love.graphics.rectangle("fill", x, y, boxWidth, boxHeight, 10, 10)

		love.graphics.setColor(0.8, 0.8, 0.8, 1)
		love.graphics.setLineWidth(2)
		love.graphics.rectangle("line", x, y, boxWidth, boxHeight)

		local attack_image_path = "images/attacks/" .. tostring(attack.name) .. ".jpeg"

		if attack_image_path then
			local success, img = pcall(love.graphics.newImage, attack_image_path)
			if success then
				local imgWidth, imgHeight = img:getDimensions()
				local scaleX = boxWidth / imgWidth
				local scaleY = imgHeight / boxHeight
				love.graphics.draw(img, x + 10, y + 20, 0, math.min(scaleX, scaleY))
			end
		end`

		love.graphics.setFont(love.graphics.newFont(20))	

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.print(keys[_] or "", x + 5, y + 5)

		love.graphics.printf(tostring(attack.usable or 0), x, y + boxHeight - 25 , boxWidth - 5, "right")

		love.graphics.setFont(love.graphics.newFont())
	end
end

for _, type in pairs(creatures) do
  for _, creature in pairs(type.creatures) do
    table.insert(all_creatures, creature)
  end
end

function getRandomCreature()
  local rst = math.randomseed(os.clock())
  local random_index = math.random(1, #all_creatures)
  return all_creatures[random_index]
end

function get_creature_rotation(isAI, creatures)
	if isAI then
		return (creatures[1].rotation == 1) and 1 or -1
	else 	return (creatures[1].rotation == 0) and 1 or -1
	end
end

function show_tables_as_JSON(table, indent)
  indent = indent or 0
  local indentString = string.rep("  ", indent)
  
  local result = ""

  if type(table) ~= "table" then
    return tostring(table)
  end

  result = result .. "{\n"

  for key, value in pairs(table) do 
    if type(value) == "table" and value.name then
      result = result .. indentString ..'  "' .. tostring(value.name) .. '": '
      result = result .. show_tables_as_JSON(value, indent + 1)
    else
      result = result .. '"' .. tostring(key) .. '": '
      
      if type(value) == "table" then
        result = result .. show_tables_as_JSON(value, indent + 1)
      else
        result = result .. '"' .. tostring(value) .. '"'
      end
    end

    result = result .. ",\n"
  end

  result = result:sub(1, -3) .. "\n" .. indentString .. "}"

  return result
end

function love.load()
    local iconData = love.image.newImageData("images/game.png")
    love.window.setIcon(iconData)

    font = love.graphics.newFont(32)

    table.insert(buttons, newButton("Play", function() switchScene("gameModeSelection") end))
    table.insert(buttons, newButton("Settings", function() switchScene("settings") end))
    table.insert(buttons, newButton("Exit", function() love.event.quit(0) end))
end

function loadBackground()
    math.randomseed(os.clock())
    randomIndex = math.random(1, 5)
    local backgroundPath = "images/background/" .. tostring(randomIndex) .. ".jpeg"
    
    print("Trying to load background image from: " .. backgroundPath)

    local imageInfo = love.filesystem.getInfo(backgroundPath)

    if imageInfo then
        background = love.graphics.newImage(backgroundPath)
    else
        error("Image not found: " .. backgroundPath)
    end

    for i = 1, 6, 1 do
     table.insert(codex_creatures, getRandomCreature())
     table.insert(ai_codex_creatures, getRandomCreature())
    end

--    print(show_tables_as_JSON(codex_creatures))
end

function switchScene(scene)
    currentScene = scene
    if currentScene == "game" then
        loadBackground(false)
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
  
    local margin, left, right = 40, 20, WINDOW_WIDTH;

    if background then
        love.graphics.draw(background, 0, -600) 
    else
        love.graphics.print("Background image not loaded!", 10, 10)
    end

    local health, ai_health = codex_creatures[1].health, ai_codex_creatures[1].health;

    local stats_x, stats_y, ai_stats_x, ai_stats_y = WINDOW_WIDTH / margin, WINDOW_HEIGHT / margin, WINDOW_WIDTH + 400, WINDOW_HEIGHT / margin

    love.graphics.setColor(1, 1, 1)

    local codex_creatures_image = love.graphics.newImage("images/creatures/" .. codex_creatures[1].name .. ".png")
    local ai_codex_creatures_image = love.graphics.newImage("images/creatures/" .. ai_codex_creatures[1].name .. ".png")
    local image_height, image_width, ai_image_height, ai_image_width = codex_creatures_image: getHeight(),codex_creatures_image: getWidth(), ai_codex_creatures_image: getHeight(), ai_codex_creatures_image: getWidth()

    local positions = {
                        {
                          {left + margin, (WINDOW_HEIGHT - image_height) * 0.5},
                          {left+250 + (margin*2), (WINDOW_HEIGHT - image_height) * 1.7},
                          {left+350 + margin, (WINDOW_HEIGHT - image_height) * 1.5},
                          {left+320 + margin, (WINDOW_HEIGHT - image_height)},
                          {(left + 250 + (margin*2)), (WINDOW_HEIGHT - image_height) * 1.7}
                        },
                        {
                          {right + (margin*20), (WINDOW_HEIGHT - ai_image_height) * 0.5},
                          {right + (margin*15), (WINDOW_HEIGHT - ai_image_height) * 1.7},
                          {right + (margin*13), (WINDOW_HEIGHT - ai_image_height) * 1.5},
                          {right + (margin*12), (WINDOW_HEIGHT - ai_image_height)},
                          {right + (margin*15), (WINDOW_HEIGHT - ai_image_height) * 1.7}
                        }
                      }

    if codex_creatures and ai_codex_creatures then
      love.graphics.scale(0.7)
      local rotation	= get_creature_rotation(false, codex_creatures)
      local ai_rotation = get_creature_rotation(true, ai_codex_creatures)
      if positions then
        love.graphics.draw(codex_creatures_image, positions[1][randomIndex][1], positions[1][randomIndex][2], 0, rotation, 1, image_width, 0)
        love.graphics.draw(ai_codex_creatures_image, positions[2][randomIndex][1], positions[2][randomIndex][2], 0, ai_rotation, 1, ai_image_width, 0)
      else
        print("Nil positions table!")
      end
    else
      love.graphics.print("Codex not loaded!", 10 , 10)
    end

    drawCreaturesNames(stats_x, stats_y, codex_creatures[1])
    drawCreaturesNames(ai_stats_x, ai_stats_y, ai_codex_creatures[1])

    drawProgressBar(stats_x, stats_y, health, codex_creatures[1].health, { 0, 1, 0 })
    drawProgressBar(ai_stats_x, ai_stats_y, ai_health, ai_codex_creatures[1].health, { 1, 0, 0 })
 
    drawAttacks(stats_x, stats_y + 50, codex_creatures[1].attacks)
    drawAttacks(ai_stats_x + 60, ai_stats_y + 50, ai_codex_creatures[1].attacks)

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
        newButton("Single Player", function() switchScene("game") end),
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

function drawEmptyScene(WINDOW_WIDTH, WINDOW_HEIGHT)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Local Multiplayer", WINDOW_WIDTH / 2 - 150, WINDOW_HEIGHT / 2)
end

function love.update(dt)
  
end
