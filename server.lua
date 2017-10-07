local lastTweet = nil
local lastTweeter = nil

TriggerEvent('es:addGroupCommand', 'tweet', 'user', function(source, args, user)

  local tweetText = table.concat(args, " ") 
	TriggerClientEvent('chatMessage', -1, "^0[^4Twitter^0]", {30, 144, 255}, "^3@" .. GetPlayerName(source) .."^0 " .. tweetText)
  lastTweet = "^3@" .. GetPlayerName(source) .."^0 " .. tweetText
  lastTweeter = GetPlayerName(source)

end, function(source, args, user)
end, {help = "Tweet users"})

TriggerEvent('es:addGroupCommand', 'rt', 'user', function(source, args, user)

  if(lastTweet ~= nil and lastTweeter ~= GetPlayerName(source)) then
	  TriggerClientEvent('chatMessage', -1, "^0[^4Twitter^0]", {30, 144, 255}, "^3@" .. GetPlayerName(source) .." ^5RTs^0 " .. lastTweet)
  end

end, function(source, args, user)
end, {help = "Retweets last Tweet"})


TriggerEvent('es:addGroupCommand', 'ooc', 'user', function(source, args, user)

  local occText = table.concat(args, " ") 
  TriggerClientEvent('chatMessage', -1, "^6OOC | " .. GetPlayerName(source) .. "^0", {255, 255, 255}, occText)

end, function(source, args, user)
end, {help = "Out of character"})


TriggerEvent('es:addGroupCommand', 'me', 'user', function(source, args, user)

  local meText = table.concat(args, " ") 
  TriggerClientEvent('chatMessage', -1, "", {255, 255, 255}, GetPlayerName(source) .. " " .. meText)

end, function(source, args, user)
end, {help = "Action text"})