writefile("DOMINIX.txt", script_key)

do
    if game.gameId == 3747388906 then
        pcall(function()
            if not game:IsLoaded() then
                repeat
                    game.Loaded:Wait()
                until game:IsLoaded()
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ryleebrooo/Synthetic/refs/heads/main/memorybypass.lua"))()
            script_key = readfile("DOMINIX.txt")
            rconsoleprint("fallen survival")
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0667043257e1e4e4b63db2a829cdd96c.lua"))()
        end)
    else
        rconsoleprint("universal")
        script_key = readfile("DOMINIX.txt")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/acd4f6bf73fc4b024210feecf7c21eed.lua"))()
    end
end
