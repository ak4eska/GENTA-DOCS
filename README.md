# GENTAHAX Documentation

Before we start, you can start learning basic of lua in [ Here ](https://www.lua.org/start.html), to understand what kind of code in this documentation


# Resourcements
- [ GENTAHAX-DOCS-OFFICIALLY ](https://github.com/GENTA7740/GENTA-HAX-DOCS/blob/main/DOCS-ANDROID.md)
- [ImGui](https://github.com/ocornut/imgui)
- [Lua](https://lua.org)
- [OpenSSL](https://www.openssl.org/)
- [Growtopia](https://www.growtopiagame.com/)

## Android Path
```
Android/media/GENTAHAX/Script/here.lua
```

# Function
Soon as possible ~

### Structure
- [TankPacketStruct](#tankpacketstruct)
- [Response](#response)
- [Camera](#camera)
- [NetAvatar](#netavatar)

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
