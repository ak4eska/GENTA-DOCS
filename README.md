# GENTAHAX Documentation

Before we start, you can start learning basic of lua in [ Here ](https://www.lua.org/start.html), to understand what kind of code in this documentation.


### Resourcements
- [ GENTAHAX-DOCS-OFFICIALL ](https://github.com/GENTA7740/GENTA-HAX-DOCS/blob/main/DOCS-ANDROID.md)
- [ImGui](https://github.com/ocornut/imgui)
- [Lua](https://lua.org)
- [OpenSSL](https://www.openssl.org/)
- [Growtopia](https://www.growtopiagame.com/)

### Android Path
```
Android/media/GENTAHAX/Script/here.lua
```

### Function
- [Usefull API ](#usefull-api)

### Structure
- [TankPacketStruct](#tankpacketstruct)
- [Response](#response)
- [Camera](#camera)
- [NetAvatar](#netavatar)
- [TileExtra](#tileextra)
- [World](#world)
- [Tile](#tile)
- [TileFlag](#tileflag)
- [ItemInfo](#iteminfo)
- [WorldObject](#worldobject)
- [NPCList](#npclist)
- [Inventory](#inventory)
- [Vector2i or Vector2f](#vector2i-or-vector2f)
- [Vector3i or Vector3f](#vector3i-or-vector3f)
- [Vector4i or Vector4f](#vector4i-or-vector4f)

### Discord Webhook Structure
- [EmbedAuthor](#embedauthor)
- [EmbedFields](#embedfields)
- [EmbedURL](#embedurl)
- [EmbedFooter](#embedfooter)
- [EmbedBuilder](#embedbuilder)
- [DiscordWebhook](#discordwebhook)

### Enums list
- [CheatCode](#cheatcode)

### Genta Hook List
 - OnTextPacket
 - OnVarList
 - OnTouch
 - OnRender
 - OnRawPacket
 - OnGameUpdatePacket
 - OnENetInit

## TankPacketStruct
```lua
local structure = {
      uint8_t: type,
      uint8_t: padding1,
      uint8_t: padding2,
      uint8_t: padding3,
      int: netid,
      int: secid,
      int: state,
      float: padding4,
      int: value,
      float: x,
      float: y,
      float: speedx,
      fload: speedy,
      int: padding5,
      int: punchx,
      int: punchy

}
```

## Response
```lua
local structure = {
      string: content
}
```

## Camera
```lua
local structure = {
      float: scale,
      Vector2f: pos,
      Vector2f: center
}
```

## NetAvatar
```lua
local structure = {
      Vector2f: pos,
      string: name,
      string: country,
      int: userId,
      int: status,
      int: netId,
      bool: facing,
      uint32_t: hair,
      uint32_t: shirt,
      uint32_t: pants,
      uint32_t: feet,
      uint32_t: face,
      uint32_t: hand,
      uint32_t: back,
      uint32_t: mask,
      uint32_t: necklace,
      int: ping,
      uint8_t: punchId,
      int: gemsCollected,
      int: gems,
      Vector4i: skinColor,
      Vector4i: quickSlot,
      int: backpackSlot,
      uint32_t: selectedItem
}
```

## TileExtra
```lua
local structure = {
      bool: valid,
      int: type,
      int: growth,
      int: owner,
      int: flags,
      list<uint32>: adminList,
      bool: ready,
      string: label,
      string: padding1,
      int: volume,
      int: fruitCount,
      int: lastUpdate
}
```

## Tile
```lua
local structure = {
      Vector2i: pos,
      uint16_t: fg,
      uint16_t: bg,
      bool: isCollideable,
      int: collisionType,
      int: flags,
      TileFlags: getFlags
}
```

## TileFlag
```lua
local structure = {
      bool: locked,
      bool: area,
      bool: flipped,
      bool: enabled,
      bool: public,
      bool: silenced,
      bool: water,
      bool: glue,
      bool: burn,
      bool: painted
}
```

## ItemInfo
```lua
local structure = {
      string: name,
      int: flags,
      int: rarity,
      int: growth,
      string: texture,
      string: texture_2,
      int: collisionType,
      Vector2i: texturePos,
      int: clothType,
      int: blockType,
      int: hitSountType
}
```

## WorldObject
```lua
local structure = {
      int: id,
      int: amount,
      int: oid,
      int: flags,
      Vector2i: pos
}
```

## World
```lua
local structure = {
      string: name,
      int: height,
      int: width,
      int: lastOid
}
```

## NPCList
```lua
local structure = {
      int: id,
      int: type,
      Vector2i: current,
      Vector2i: target
}
```

## Inventory
```lua
local structure = {
      int: id,
      uint8_t: amount
}
```

## Vector2i or Vector2f
```lua
local structure = {
      int or float: x,
      int or float: y
}
```

## Vector3i or Vector3f
```lua
local structure = {
      int or float: x,
      int or float: y,
      int or float: z
}
```

## Vector4i or Vector4f
```lua
local structure = {
      int or float: w,
      int or float: x,
      int or float: y,
      int or float: z
}
```

## Genta Hook
|  GentaHook           | Parameter              |
|---------------------|------------------------|
| OnTextPacket        | int flag, String packet	   |
| OnVarlist           | Variantlist_t[], int netID  |
| OnTouch             | float x, float y    |
| OnRender            | int deltaTime    	|
| OnRawPacket         | TankPacketStruct raw|
| OnGameUpdatePacket  | TankPacketStruct raw|
| OnENetInit		  | String ip, int port	|

### Discord Webhook Structure

## EmbedAuthor
```lua
local structure = {
      string: name,
      string: url,
      string: icon_url
}
```

## EmbedFields
```lua
local structure = {
      string: name,
      string: value,
      bool: inline
}
```

## EmbedURL
```lua
local structure = {
      string: url
}
```

## EmbedFooter
```lua
local structure = {
      string: text,
      string: icon_url
}
```

## EmbedBuilder
```lua
local structure = {
      EmbedAuthor: author,
      string: title,
      string: url,
      string: description,
      string: color,
      list: fields,
      EmbedURL: thumbnail,
      EmbedURL: image,
      EmbedFooter: footer
}
```

## DiscordWebhook
```lua
local structure = {
      string: username,
      string: avatar_url,
      string: content,
      bool: useEmbeds,
      EmbedBuilder: embeds
}
```

### Enums

## CheatCode
| Label                 | Value |
|-----------------------|-------|
| Fast Fruit            | 0     |
| Ghost Mode            | 1     |
| Night Vision          | 2     |
| Can See Ghost         | 3     |
| Anti Bounce           | 4     |
| Death Anywhere        | 5     |
| No Clip               | 6     |
| Bypass Death          | 7     |
| Show Door Label       | 8     |
| Show Sign Label       | 9     |
| Anti Portal           | 10    |
| Dev Mode              | 11    |
| Fast Wheel            | 12    |
| Real Fake Bubble      | 13    |
| Show Debug            | 14    |
| Anti State            | 15    |
| No Particle           | 16    |
| Path Finder           | 17    |
| Skip Update           | 18    |
| Anti Tile Activation  | 19    |
| Anti Respawn          | 20    |
| Anti Freeze State     | 21    |
| Can't Take Item       | 22    |
| Can't move            | 23    |
| Fast Dice             | 24    |
| Auto Acc              | 25    |
| Mod Fly               | 26    |
| Extractor Dynamo      | 27    |
| Anti OnKilled         | 28    |
| No Render Image       | 29    |
| Free Camera           | 30    |
| Show Ready Harvest    | 31    |

## Toast Type
| Flags                | Value |
|--------------------------------|-------|
| ImGuiToastType_None      | 0     |
| ImGuiToastType_Success   | 1     |
| ImGuiToastType_Warning   | 2     |
| ImGuiToastType_Error | 3 |
| ImGuiToastType_Info          | 4     |


## ENet Packet Flag
| Flags                | Value |
|--------------------------------|-------|
| ENET_PACKET_FLAG_RELIABLE      | 0     |
| ENET_PACKET_FLAG_UNSEQUENCED   | 1     |
| ENET_PACKET_FLAG_NO_ALLOCATE   | 2     |
| ENET_PACKET_FLAG_UNRELIABLE_FRAGMENT | 3 |
| ENET_PACKET_FLAG_SENT          | 8     |

## Growtopia Raw Packet Type
| Packet Type                       | Value |
|-----------------------------------|-------|
| PACKET_STATE                      | 0     |
| PACKET_CALL_FUNCTION              | 1     |
| PACKET_UPDATE_STATUS              | 2     |
| PACKET_TILE_CHANGE_REQUEST        | 3     |
| PACKET_SEND_MAP_DATA              | 4     |
| PACKET_SEND_TILE_UPDATE_DATA      | 5     |
| PACKET_SEND_TILE_UPDATE_DATA_MULTIPLE | 6 |
| PACKET_TILE_ACTIVATE_REQUEST      | 7     |
| PACKET_TILE_APPLY_DAMAGE          | 8     |
| PACKET_SEND_INVENTORY_STATE       | 9     |
| PACKET_ITEM_ACTIVATE_REQUEST      | 10    |
| PACKET_ITEM_ACTIVATE_OBJECT_REQUEST | 11  |
| PACKET_SEND_TILE_TREE_STATE       | 12    |
| PACKET_MODIFY_ITEM_INVENTORY      | 13    |
| PACKET_ITEM_CHANGE_OBJECT         | 14    |
| PACKET_SEND_LOCK                  | 15    |
| PACKET_SEND_ITEM_DATABASE_DATA    | 16    |
| PACKET_SEND_PARTICLE_EFFECT       | 17    |
| PACKET_SET_ICON_STATE             | 18    |
| PACKET_ITEM_EFFECT                | 19    |
| PACKET_SET_CHARACTER_STATE        | 20    |
| PACKET_PING_REPLY                 | 21    |
| PACKET_PING_REQUEST               | 22    |
| PACKET_GOT_PUNCHED                | 23    |
| PACKET_APP_CHECK_RESPONSE         | 24    |
| PACKET_APP_INTEGRITY_FAIL         | 25    |
| PACKET_DISCONNECT                 | 26    |
| PACKET_BATTLE_JOIN                | 27    |
| PACKET_BATTLE_EVEN                | 28    |
| PACKET_USE_DOOR                   | 29    |
| PACKET_SEND_PARENTAL              | 30    |
| PACKET_GONE_FISHIN                | 31    |
| PACKET_STEAM                      | 32    |
| PACKET_PET_BATTLE                 | 33    |
| PACKET_NPC                        | 34    |
| PACKET_SPECIAL                    | 35    |
| PACKET_SEND_PARTICLE_EFFECT_V2    | 36    |
| GAME_ACTIVE_ARROW_TO_ITEM         | 37    |
| GAME_SELECT_TILE_INDEX            | 38    |


### AddHook
``
AddHook(string: GentaHook, int/string: HookLabel, function: callback)
``

### Getting Player
- ```lua
  getLocal()
  ```
- ```lua
  getPlayerByNetID(netid)
  ```
- ```lua
  getPlayerList()
  ```
### Getting Player Inventory
- ```lua
  getInventory()
  ```
### Getting World Info
- ```lua
  getWorld()
  ```
### Getting World Tile
- ```lua
  checkTile(x, y)
  ```
- ```lua
  getTile()
  ```
- ```lua
  getExtraTile()
  ```
### Getting World Object
- ```lua
  getWorldObject()
  ```
### Getting World NPC
- ```lua
  getNPC()
  ```
### Getting Game Touch
- ```lua
  getTouchAtScreenPos()
  ```
- ```lua
  getTouchAtWorldPos()
  ```
### Getting Game Camera
- ```lua
  getCamera()
  ```
- ```lua
  worldToScreen(float x, float y)
  ```
### Setting World Camera
- ```lua
  setCamera(float x, float y)
  ```
### Getting Device Info
- ```lua
  getMac()
  ```
- ```lua
  getGid()
  ```
### Setting Device Info
- ```lua
  randomGid()
  ```
- ```lua
  randomMac()
  ```
- ```lua
  setGid(string: newGoogleID) : max 37 characters
  ```
- ```lua
  setMac(string: newMac) : max 18 character
  ```
### Packet Sender
- ```lua
  sendPacket(int: type, string: packet)
  ```
- ```lua
  sendPacketRaw(bool: send_to_client, TankPacketStruct packet)
- ```lua
  sendVariant(string: variant, int: netID, int: delay)
  ```
### Getting System Timing
- ```lua
  getCurrentTimeInternal()
  ```
### Usefull API
- ```lua
  arrowToItem(bool: isFloatingObject, int: ItemID_Target)
  ```
- ```lua
  getDiscordID()
  ```
- ```lua
  checkPath(int: x, int: y)
  ```
- ```lua
  requestCollect(int: x, int: y, int: ItemID)
  ```
- ```lua
  requestTileChange(int: x, int: y, int: ItemID)
- ```lua
  AddHook(string: GentaHook, string: HookLabel, function)
- ```lua
  RemoveHooks()
  ```
- ```lua
  RemoveHook(string: HookLabel)
  ```
- ```lua
  sleep(int: sleep_in_ms)
  ```
- ```lua
  doToast(int: toastType, int: dissMissTimeInMilliSeconds, string: text)
- ```lua
  callToast(string: text, int: type) -- 1 for long time, 0 for short time (Based from java toast)
  ```
- ```lua
  getScreenSize()
  ```
- ```lua
  runThread(function(), optional: HookLabel)
  ```
- ```lua
  killAllThread()
  ```
  
