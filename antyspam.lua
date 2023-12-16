-- Pierwotny właściciel i twórca kodu: ZbyK; Zbigniew Płachciński, zbigniewplachcinski@gmail.com
-- Zakaz używania / edycji kodu bez wcześniejszej zgody ze strony właściciela
-- Zakaz wykorzystywania całego lub fragmentów kodu
-- W przypadku złamania powyzszych zasad sprawa zostanie skierowana do sądu pod zarzutem: Naruszenia majątkowych praw autorskich
-- Pierwotnie pełne prawo do używania tego kodu posiada tylko ZbyK i tylko on ma prawo pozwolić uzytkować lub zarządać trwałego usunięcia kodu lub jego fragmentów


anty = {
	message={},
	timer={},
	
}

function antyspam(index,plr,time,msg,timemsg,ge)
	if index and plr then
		if time and tonumber(time) then 

			if plr and isElement(plr) then 
				if getElementData(plr,"ACL") then 
					return 0
				end
				plr = getPlayerName(plr) 
			end
			
			if not anty.timer[index] then
				anty.timer[index]={}
			end
			
			
			if msg and timemsg and tonumber(timemsg) then
			
				if not anty.message[index] then 
					anty.message[index]={}
				end
				
				if anty.message[index][msg] and anty.message[index][msg][1] == plr and getTickCount() - anty.message[index][msg][2] < timemsg then 
					if ge~=true then
						anty.message[index][msg] = {plr,getTickCount()} 
					end
					return 1 
				else
					anty.message[index][msg] = {plr,getTickCount()} 
				end
			end
			
			
			if anty.timer[index][plr] and getTickCount() - anty.timer[index][plr] < time then
				if ge~=true	then
					anty.timer[index][plr] = getTickCount()
				end
				return 2
			else
				anty.timer[index][plr] = getTickCount()
			end
		
			
		end
	end
	return 0
end



if localPlayer then 

	-- addCommandHandler("antyspam",function(_,index,msg)
		-- outputChatBox(antyspam(index,localPlayer,5000,msg,1000))
	-- end)

	fileDelete("antyspam.lua") 
end


