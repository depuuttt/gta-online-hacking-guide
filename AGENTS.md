# AGENTS.md

## Repo Shape

This repo has two independent parts; keep changes scoped to one at a time:

- **Static guides site** (GitHub Pages): `index.html`, `guides/*.html`, `assets/{css,js,img}/`. Pure HTML/CSS/JS — no build step, no framework, no dependencies. Pages link `assets/css/base.css` + a page-specific sheet (`index.css` or `guide.css`). Edit HTML directly; verify links/paths are relative (`../` from `guides/`).
- **Lua scripts** (`lua-script/`): YimMenuV2 LuaJIT scripts, also no build step. Each `.lua` is self-contained and dropped into YimMenuV2's `scripts` dir. Subfolders by purpose: `unlocks/`, `businesses/`, `mission-skips/`, `career/`, `tools/` (see `lua-script/README.md` for the table to keep in sync). `lua-script/ongoing-projects/` is a scratch/WIP area (currently empty).

There is no test suite, linter, or typecheck configured. Verify Lua edits by reading the relevant reference doc (below) and matching existing script patterns.

## Do Not Edit

- **Never edit any file under `lua-script/docs/`.** These are vendored auto-generated/reference material and must stay untouched:
  - `lua-script/docs/YimMenuV2/{lua-api.md, natives.lua, yimmenu_v2.lua}`
  - `lua-script/docs/ImGui/{README.md, FONTS.md, FAQ.md, EXAMPLES.md}`

## Lua API Reference (consult before editing scripts)

When writing/editing scripts under `lua-script/`, consult the docs in `lua-script/docs/` (do **not** edit them):

- `YimMenuV2/lua-api.md` — authoritative API: globals/tables/classes (`menu`, `natives`, `ImGui`, `entity`, `util`, `event`, `pointer`, `memory`, `Vector3`, `notify`, `log`, `script`, `stats`, ...). Check signatures here first.
- `YimMenuV2/yimmenu_v2.lua` — Lua type stubs for the same API; useful for parameter types and autocomplete-style lookups.
- `YimMenuV2/natives.lua` — full GTA native bindings via the `natives.*` table (`natives.STATS.*`, `natives.WEAPON.*`, `natives.ENTITY.*`, ...). Large (~877 KB); grep for the namespace/hash you need, don't read it whole.
- `ImGui/` — upstream Dear ImGui docs for the `ImGui.*` widget API.

Prefer exact signatures/names from these docs over guessing or copying patterns from older scripts — the API may have changed since they were written.

## Lua Script Conventions

- Scripts run in a sandboxed LuaJIT state; globals above are pre-available. Call `natives.load_natives()` once before using any `natives.*` namespace.
- Two script shapes exist in this repo — match the one you're editing:
  - **Stat/utility scripts**: wrap work in `script.run_in_callback(function() ... end)`. Long loops must `script.yield(ms)` to avoid hangs. Stat writes that touch many values are batched (e.g. groups of 10 with a `script.yield(30000)` between batches) to avoid transaction errors — see `unlocks/unlock-everything.lua`.
  - **GUI scripts** (`*-gui.lua`): top-level `menu.set_menu_name("...")`, `local X = menu.get_submenu()`, then build widgets under that submenu using the YimMenuV2 `menu.*` API (not raw `ImGui.*` unless needed).
- Stat names use `MPx_...` (character-agnostic) or `MP0/MP1_...` (slot-specific). Prefer `MPx_` unless a script targets a specific character slot.
- New script goes in the matching subfolder and gets a header comment with credits/requirements; add/keep its row in `lua-script/README.md`'s table.
