# GENTAHAX Documentation

Before we start, you can start learning basic of lua in [ Here ](https://www.lua.org/start.html), to understand what kind of code in this documentation.


### Resourcements
- [ GENTAHAX-DOCS-OFFICIALLY ](https://github.com/GENTA7740/GENTA-HAX-DOCS/blob/main/DOCS-ANDROID.md)
- [ImGui](https://github.com/ocornut/imgui)
- [Lua](https://lua.org)
- [OpenSSL](https://www.openssl.org/)
- [Growtopia](https://www.growtopiagame.com/)

### Android Path
```
Android/media/GENTAHAX/Script/here.lua
```

### Function
Soon as possible ~

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
- [Vector2i or Vector2f](#vector2i-vector2f)

### Discord Webhook Structure
Soon as possible ~

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
      int: netid,
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
