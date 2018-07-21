# SevTech Ages: Script Notes

### Script Priorities
List of priorities used for creation of ZenScript files to ensure the load order is handled correctly.

Standard scripts should **not** use a priority as they'll load after the main ones are loaded and ready 
for usage. Such as OreDict/Classes and global vars for quick access.


| Number/Range      | Type                  | Notes             |
| :---------------: | :-------------------: | :---------------: |
| 4000              | Pre Init              |
| 3500 - 3999       | Stage Setup           |
| 2601 - 3499       | Classes               |
| 2501 - 2600       | Ore Dict (Pre Unify)  |
| 2450 - 2500       | Unification           |
| 2401 - 2549       | Ore Dict (Post Unify) |
| 2301 - 2400       |                       |
| 2300              | Class Registering     |
| 0 - 2299          | Normal Scripts        |
| -50               | Mod Inter Loader      | Init Script      |
| -100              | Run Script            | **DON'T CHANGE** |
