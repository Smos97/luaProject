local griglia = require "ristorante.griglia"
local loveframes = require "LoveFrames.loveframes" 

local piano 
local ok=false
local list={}

function love.load()

    repeat
	io.write("inserisci larghezza piano " .. '\n')
	re=tonumber(io.read())
    until re~=nil
    repeat
	io.write("inserisci lunghezza piano " .. '\n')
	ra=tonumber(io.read())
    until  ra~=nil
    io.write("inserisci il numero delle persone che hanno prenotato" .. '\n' .. "premere 0 per terminare l'inserimento" .. '\n')
    repeat
	x=tonumber(io.read())
    until x==0
    piano = griglia:create(re,ra)
    griglia:print(piano)
    --print(griglia:getWidth(piano))
    --print(griglia:getHeight(piano))
    ok=true
    
end


function love.update(dt)

  loveframes.update(dt)

end

function love.draw()

    if ok then
	love.graphics.setBackgroundColor( 255,255,255 )
	love.graphics.setColor( 0,0,0 )
	
	for re=1,griglia:getWidth(piano) do
	    for ra=1, griglia:getHeight(piano) do    
		w=re*griglia:getWidth(piano)*5   
		k=ra*griglia:getHeight(piano)*5  
		love.graphics.rectangle("line",160,70,w,k)
	    end
	end
    end

end

