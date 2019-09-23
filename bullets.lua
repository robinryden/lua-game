require("player")
require("enemy")

bullets = {}
speed = 800

function bulletsMove(dt)
    for i,v in ipairs(bullets) do
		v.x = v.x + (v.dx * dt)
    v.y = v.y + (v.dy * dt)
	end
end

function shootBullet(x, y)
        local startX = player.X + player.W / 2
        local startY = player.Y + player.H / 2
        local mouseX = x
        local mouseY = y

        local angle = math.atan2((mouseY - startY), (mouseX - startX))

        local bulletDx = speed * math.cos(angle)
        local bulletDy = speed * math.sin(angle)

        table.insert(bullets, {x = startX, y = startY, dx = bulletDx, dy = bulletDy})
end

function bulletCollision()
    
end

function drawBullets()
    love.graphics.setColor(0.5, 0.5, 0.5)
    for i,v in ipairs(bullets) do
		love.graphics.circle("fill", v.x, v.y, 3)
	end
end