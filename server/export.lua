function UTILS_SERVER()
    local self = {}

    -- SERVER CALLBACK --
    self.CreateCallback = function(name, cb)
        CreateCallback(name, cb)
    end

    self.TriggerCallback = function(name, source, cb, ...)
        TriggerCallback(name, source, cb, ...)
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