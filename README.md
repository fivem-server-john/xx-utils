
# Utils

Shared methods used by other resources


## Client API Reference

### TriggerCallbackSync

```lua
TriggerCallbackSync(name, parameters)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. Callback identifier |
| `parameters` | `any` | Extra data |

#### Example

```lua
local result = TriggerCallbackSync("character-selector:GetPlayerCharacters", "John", "Olsen", 55, "Denmark")
```

### TriggerCallback

```lua
TriggerCallback(name, cb, parameters)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. Callback identifier |
| `cb` | `function` | **Required**. Function to run when receiving data from server |
| `parameters` | `any` | Extra data |

#### Example

```lua
TriggerCallback("character-selector:GetPlayerCharacters", function(result)
    print("Success")
end, "John", "Olsen", 55, "Denmark")
```

### TriggerLatentCallbackSync

```lua
TriggerLatentCallbackSync(name, bps, parameters)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. Callback identifier |
| `bps` | `number` | **Required**. Bytes per second |
| `parameters` | `any` | Extra data |

#### Example
```lua
local result = TriggerLatentCallbackSync("players:GetAllPlayersOnServer", 500000, "parameter1", "parameter2")
```
```lua
500000 bytes = 0.5 megabytes
```
### TriggerLatentCallback

```lua
TriggerLatentCallback(name, bps, cb, parameters)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. Callback identifier |
| `bps` | `number` | **Required**. Bytes per second |
| `cb` | `function` | **Required**. Function to run when receiving data from server |
| `parameters` | `any` | Extra data |

#### Example

```lua
TriggerCallback("players:GetAllPlayersOnServer", 500000 function(result)
    print("Got data of all players on server")
end, "parameter1", "parameter2")
```
```lua
500000 bytes = 0.5 megabytes
```

## Server API Reference

### GetPlayerIdentifierOfType

```lua
GetPlayerIdentifierOfType(source, type)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. source |
| `type` | `string` | Default: license |

#### Example

```lua
local playerLicense = GetPlayerIdentifierOfType("license")
```

### CreateCallback

```lua
CreateCallback(name, cb)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. Callback identifier |
| `cb` | `function` | **Required**. Function to run when called |

#### Example

```lua
CreateCallback("character-selector:TryToCreateNewCharacter", function(source, cb, characterData)
    local result = DATABASE.CreateCharacter(characterData)
    cb(result)
end)
```

### CreateLatentCallback

```lua
CreateLatentCallback(name, cb)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `name` | `string` | **Required**. Callback identifier |
| `cb` | `function` | **Required**. Function to run when called |

#### Example

```lua
CreateLatentCallback("players:GetAllPlayersOnServer", function(source, cb)
    local result = DATABASE.GetAllPlayersOnServer()
    cb(result)
end)
```

## Shared API Reference

### RandomInt

```lua
RandomInt(length)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `length` | `number` | **Required**. Length of the number |

#### Example

```lua
local randomNumber = RandomInt(4)
```

### RandomStr

```lua
RandomStr(length)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `length` | `number` | **Required**. Length of the string |

#### Example

```lua
local randomString = RandomStr(4)
```
