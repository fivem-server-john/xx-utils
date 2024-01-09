function UTILS_CLIENT()
    local self = {}

    -- CLIENT CALLBACK --
    self.TriggerCallbackSync = function(name, ...)
        return TriggerCallbackSync(name, ...)
    end

    self.TriggerCallback = function(name, cb, ...)
        return TriggerCallback(name, cb, ...)
    end

    self.TriggerLatentCallbackSync = function(name, bytesPerSecond, ...)
        return TriggerLatentCallbackSync(name, bytesPerSecond, ...)
    end

    self.TriggerLatentCallback = function(name, bytesPerSecond, cb, ...)
        return TriggerLatentCallback(name, bytesPerSecond, cb, ...)
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
    return UTILS_CLIENT()
end)