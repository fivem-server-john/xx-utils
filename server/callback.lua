--Normal
function CreateCallback(name, cb)
    ServerCallbacks[name] = cb
end


function TriggerCallback(name, source, cb, ...)
    if not ServerCallbacks[name] then return end
    ServerCallbacks[name](source, cb, ...)
end


RegisterNetEvent(ResourceName .. ":" .. 'TriggerCallback', function(name, ...)
    local src = source
    TriggerCallback(name, src, function(...)
        TriggerClientEvent(ResourceName .. ":" .. 'TriggerCallback', src, name, ...)
    end, ...)
end)

--Latent
function CreateLatentCallback(name, cb)
    ServerCallbacks[name] = cb
end

function TriggerLatentCallback(name, source, cb, ...)
    if not ServerCallbacks[name] then return end
    ServerCallbacks[name](source, cb, ...)
end

RegisterNetEvent(ResourceName .. ":" .. 'TriggerLatentCallback', function(name, bps, ...)
    local src = source
    TriggerLatentCallback(name, src, function(...)
        TriggerLatentClientEvent(ResourceName .. ":" .. 'TriggerCallback', src, bps, name, ...)
    end, ...)
end)