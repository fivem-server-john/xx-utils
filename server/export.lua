function UTILS_SERVER()
    local self = {}

    -- PLAYER --
    self.GetPlayerIdentifierOfType = function(source, type)
        return GetPlayerIdentifierOfType(source, type)
    end

    -- SERVER CALLBACK --
    self.CreateCallback = function(name, cb)
        CreateCallback(name, cb)
    end

    self.CreateLatentCallback = function(name, cb)
        CreateLatentCallback(name, cb)
    end

    -- Random --
    self.RandomInt = function(length)
        return RandomInt(length)
    end

    self.RandomStr = function(length)
        return RandomStr(length)
    end

    return self
end

exports('GetObject', function()
    return UTILS_SERVER()
end)