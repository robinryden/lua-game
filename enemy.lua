require("player")

enemies = {}
local speed = 50

function loadEnemies(total)
    math.randomseed(os.time())

    for i=1,total do 
        table.insert(enemies, {x = math.random(100, 1000), y = math.random(100, 1000), dx = player.X, dy = player.Y, health = 100})
    end
end

function enemyMove(dt)
    for i,v in ipairs(enemies) do
        local startX = player.X + player.W / 2
        local startY = player.Y + player.H / 2

        local angle = math.atan2((startY - v.y), (startX - v.x))

        local enemyDx = speed * math.cos(angle)
        local enemyDy = speed * math.sin(angle)
        
		v.x = v.x + (enemyDx * dt)
		v.y = v.y + (enemyDy * dt)
	end
end

function drawEnemies()
    love.graphics.setColor(0,0,0)
    for i,v in ipairs(enemies) do
        love.graphics.print("Enemy 100%", v.x - 30, v.y - 50)
		love.graphics.circle("fill", v.x, v.y, 30)
	end
end