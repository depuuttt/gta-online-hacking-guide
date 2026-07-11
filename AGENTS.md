# Agent Rules

## Do Not Edit

- **Never edit any file under `lua-script/docs/` under any circumstances.** These files are auto-generated/reference material and must remain untouched. This includes (but is not limited to) the following:
  - `lua-script/docs/YimMenuV2/lua-api.md`
  - `lua-script/docs/YimMenuV2/natives.lua`
  - `lua-script/docs/YimMenuV2/yimmenu_v2.lua`
  - `lua-script/docs/ImGui/README.md`
  - `lua-script/docs/ImGui/FONTS.md`
  - `lua-script/docs/ImGui/FAQ.md`
  - `lua-script/docs/ImGui/EXAMPLES.md`

## Reference

When writing or editing Lua scripts under `lua-script/`, consult the reference material in `lua-script/docs/` (do **not** edit these files):

- `lua-script/docs/YimMenuV2/lua-api.md`
  — Authoritative YimMenuV2 Lua API: globals/tables/classes/functions (`menu`, `natives`, `ImGui`, `entity`, `util`, `event`, `pointer`, `memory`, `Vector3`, etc.). Check here first for signatures and usage.
- `lua-script/docs/YimMenuV2/yimmenu_v2.lua`
  — Lua type stubs for the same API; useful for parameter types and autocomplete-style lookups.
- `lua-script/docs/YimMenuV2/natives.lua`
  — Full GTA native bindings exposed via the `natives.*` table (e.g. `natives.STATS.*`, `natives.WEAPON.*`, `natives.ENTITY.*`). Use it to find the correct native for a given operation and its parameter list. This file is large (~877 KB); search/filter for the specific native namespace or hash you need rather than reading the whole file.
- `lua-script/docs/ImGui/` (README.md, FAQ.md, FONTS.md, EXAMPLES.md)
  — Upstream Dear ImGui docs for the `ImGui.*` widget API used by `-gui.lua` scripts.

Prefer the exact signatures/names from these docs over guessing or copying patterns from existing scripts, since the API may have changed since older scripts were written.
