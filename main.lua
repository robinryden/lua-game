require("player")
require("bullets")
require("enemy")

function love.load()
    love.window.setMode(920, 800, {resizable=true, vsync=true, minwidth=400, minheight=300})

    love.graphics.setNewFont(12)
    love.graphics.setColor(0,0,0)
    love.graphics.setBackgroundColor(34, 139, 20)

    loadEnemies(3)
 end

function love.update(dt)
    playerMove()
    bulletsMove(dt)
    enemyMove(dt)
    bulletCollision()
 end

function love.draw()
    drawPlayer()
    drawBullets()
    drawEnemies()
end

function love.mousepressed(x, y, button)
	if button == 1 then
		shootBullet(x, y)
	end
end