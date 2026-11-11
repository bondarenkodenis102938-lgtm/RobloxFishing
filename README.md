# RobloxFishing

A cozy island RPG / mini-MMO prototype in Roblox.

The first development target is a **personal island** where the player can explore, fish, gather materials, and eventually build a home.

## Project notes

- [Game design and island plan](docs/GAME_DESIGN.md) — current concept, rough island layout, fishing systems, development order, and open questions.

## Current direction

- A larger personal island.
- A central lake connected to the sea by a channel.
- A small resource-gathering forest.
- Fishing with fish habitats, bait, experience, and achievements.
- A home that the player can build and decorate over time.

The first version is intentionally small. We will prototype the island and core gameplay systems before expanding toward a shared MMO world.

## How we develop this project

This project is developed collaboratively by the user and ChatGPT. The user works in Roblox Studio, tests the game, shares screenshots or results, and makes the final design decisions. ChatGPT acts as a design and development partner: it helps break large systems into manageable steps, explains Roblox Studio and Luau concepts, proposes system architecture, writes and reviews code, and helps diagnose problems.

### Repository workflow

- **`docs/GAME_DESIGN.md`** is the living game-design document. It records agreed decisions, provisional proposals, open questions, mechanics, and the development plan.
- **`src/`** contains the actual game code, organized into focused modules. Shared configuration/data belongs in shared modules; gameplay behavior belongs in systems that use that data.
- Before changing an existing file, ChatGPT retrieves its latest repository version and uses the current file SHA for the update. This helps avoid overwriting newer work.
- Design decisions are documented as we make them. Unconfirmed ideas are labelled as proposals or open questions rather than silently treated as final decisions.
- Code is added in small, testable pieces. ChatGPT explains where each script or ModuleScript belongs and what the user should do in Roblox Studio.
- The user runs the project in Roblox Studio and reports what happened. Changes are adjusted based on actual tests rather than assuming the first implementation is correct.
- A change is only described as saved to GitHub after the repository update succeeds.

### Working principles

1. Build one small working feature at a time instead of designing the entire game upfront.
2. Keep data, gameplay logic, and visual presentation separate where practical.
3. Prefer clear, reusable systems over one-off scripts and manual placement of every small object.
4. Explain technical steps in plain language; no prior programming knowledge is assumed.
5. Keep the user in control of creative and gameplay decisions. ChatGPT may recommend a direction, but proposals remain changeable until agreed.
6. Test in Roblox Studio, then refine.
