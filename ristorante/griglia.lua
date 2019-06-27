griglia = {}

function griglia:create(altezza,larghezza) 

    obj = {}

    for i=1,altezza do
	obj[i] = {}
	for j=1,larghezza do
	   obj[i][j] = ("[" .. i .. "," .. j .. "]")
	end
    end
    return obj

end

function griglia:print(obj) 
    
    for i=1,#obj do              -- #obj significa che va da 1 fino alla grandezza di obj
	for j=1,#obj[1] do
	    io.write(obj[i][j] .. ' ')
	end
	io.write('\n')
	io.write('\n')
	
    end
end

function griglia:getWidth(griglia) -- prende l'altezza della griglia
    return #griglia[1]
end

function griglia:getHeight(griglia)
    return #griglia
end

return griglia

