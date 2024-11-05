## Garry's Mod Setup Menu
A simple configuration menu that allows you to modify Garry's Mod environment variables.
**Here is the syntax of the configuration lines :**
```lua
{"checkbox", Config.Name, Config.Cmd},
{"key_bind", Config.Name, Config.Cmd},
{"slider", Config.Name, Config.Cmd, Config.MinValue, Config.MaxValue, Config.Decimal},
```
**Here is a complete example :**
```lua
local configuration_menu_config = {
  {"Example of configuration",
    {
      {"checkbox", "My checkbox", "sv_cheats"},
      {"slider", "My slider", "sbox_maxprops", 0, 300, 0},
    },
  },
  {"Second example of configuration",
    {
      {"checkbox", "My second checkbox", "sv_cheats"},
      {"slider", "My second slider", "sbox_maxprops", 0, 300, 0},
    },
  },
}
```
**This gives this in game :**



![image](https://github.com/user-attachments/assets/02944373-9d49-437f-b6d8-8b9e1934921e)
