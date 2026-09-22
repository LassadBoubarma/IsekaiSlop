# IsekaiSlop

A Roblox multiplayer fantasy isekai RPG built around the fantasy of starting as an unknown F-Rank adventurer and gradually becoming one of the strongest and most recognisable adventurers in the world.

## Current milestone

Build the first-player tutorial vertical slice:

1. Spawn with a random race.
2. Follow guidance to the tavern receptionist.
3. Register as an adventurer and choose a class.
4. Confirm the class on a stamped adventurer ID/card.
5. Visit the quest board and accept the forced F-Rank goblin quest.
6. Enter a semi-open forest/mountain zone with rabbits, slimes and a goblin cave.
7. Kill goblins and the Goblin Master.
8. Return to the capital through an animated teleporter.
9. Sell the goblins' green crystals at the tavern.
10. Use the quest earnings to buy the first horse at the ranch.

See `docs/GAME_DESIGN.md` for the full design direction.

## Two-PC workflow

The published Roblox place remains the source of truth for the asset-heavy map, terrain and Creator Store models. GitHub + Rojo are used for scripts, UI code, shared modules, configuration and documentation.

On each PC:

1. Clone this repository.
2. Install Rojo and the Rojo Studio plugin.
3. Open the same published IsekaiSlop place in Roblox Studio.
4. Run `rojo serve` from this repository.
5. Connect the Rojo Studio plugin to the local server.
6. Pull from GitHub before starting work.
7. Commit and push when finished.

Do not map Rojo over `Workspace` yet; the current city/environment is already built in Studio and should not be overwritten.

## Repository layout

- `src/ReplicatedStorage` — shared modules, configs and remotes.
- `src/ServerScriptService` — server gameplay systems.
- `src/StarterPlayerScripts` — client controllers and HUD logic.
- `src/StarterGui` — UI instances/code managed by Rojo later.
- `docs` — design and workflow documentation.

## Direction

Keep the visual language coherent and original medieval fantasy. Avoid obvious copies of other games/IP. PvE, exploration, progression, adventurer rank and co-op are the initial focus.
