# speclib/thirdpersoncontrol!
- This datapack allows players to control entities in THIRD PERSON via WASD, Jump and Sneak INPUTS!
- This datapack only works in **1.21.4 and above**!
### Modules:
- Camera Interpolate


# How to Use:
### Third Person Control:
The Third Person Control is a part/main module of the datapack which allows players to control entities with WASD. It takes player input via the new Player Input predicates and calculates and applies Motion Vector into the Motion NBT of the entity. The datapack also allows players to spectate entities (in third person). The camera positions are initialized in `tpc:gb/load`. All entities seen in that function file are controllable with WASD, jump and sneak. Some entities have special controls, like the entities which can fly can gain altitude with holding down jump.
- Spawn Entity and Control In Third Person: `/function tpc:summon {entity:"armor_stand"}`
- Spectate an Entity with a Specific Tag: `/function tpc:spectate {tag:"temp_tag"}`
- Spectate a Random Entity with a Specific Tag: `/function tpc:spectate_random {sub_tag:"temp_tag"}`
- Unspectate Entities: `/function tpc:remove`
### Camera Interpolate (Module):
The Camera Interpolate Module allows users to interpolate to a specific 'X' and 'Y' rotation, with a particular 'SPEED' value. When the command is ran, the player camera will find the shortest path to the given rotation coordinates and interpolate and the provided speed. The Module also allows players to switch from Controlling the Entity to Spectating It. When Spectating the Entity, their Camera will randomly interpolate to a random direction every 10 seconds.
- Interpolate Camera: `/function camera:interpolate {"x":10,"y":30,"speed":200} // Greater the Speed Value, Slower the Interpolation.`
- Interpolate to a Random Direction: `/function camera:interpolate_random`
- Toggle from Entity Controller → Entity Spectator (and vice versa): `/function camera:toggle_control`
