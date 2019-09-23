player = {
    X = 0,
    Y = 0,
    W = 30,
    H = 30,
}

function playerMove() 
    if love.keyboard.isDown("w") then
        print("Up!")
        player.Y = player.Y - 5
     end
 
     if love.keyboard.isDown("s") then
         print("down!")
         player.Y = player.Y + 5
      end
 
      if love.keyboard.isDown("a") then
         print("left!")
         player.X = player.X - 5
      end
 
      if love.keyboard.isDown("d") then
         print("right!")
         player.X = player.X + 5
      end
    end

function drawPlayer()
    love.graphics.print("Player", player.X - 3, player.Y - 20)
    love.graphics.setColor(0, 191, 255)
    love.graphics.rectangle("fill", player.X, player.Y, player.W, player.H)
end