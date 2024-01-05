function GetPlayerIdentifierOfType(source, type)
    local src = source
    local type = type or "license"
    for _, identifier in pairs(GetPlayerIdentifiers(src)) do
        if string.find(identifier, type) then
            return identifier
        end
    end
    return {state = false, message = "Error: Found no identifier with type: " .. type .. " for source: " .. src}
end