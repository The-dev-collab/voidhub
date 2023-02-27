local player = game.Players.LocalPlayer

repeat wait() until game:IsLoaded() 

if game.PlaceId == 8540346411 then
  loadstring(game:HttpGet('https://raw.githubusercontent.com/DanielDuesenDieb/voidhub/main/%5BJUNGLE!%5D%20Rebirth%20Champions%20X.lua'))()
else
  player:kick("WRONG GAME!")
end
