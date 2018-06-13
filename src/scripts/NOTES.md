# SevTech Ages: Script Notes

### Script Prioritys
List of prioritys used for creation of ZenScript files to ensure the load order is handled correctly.

Standard scripts should **not** use a priority as they'll load after the main ones are loaded and ready 
for usage. Such as OreDict/Classes and global vars for quick acess.


| Number/Range      | Type                  | Notes             |
| :---------------: | :-------------------: | :---------------: |
| 3000              | Stage Setup           |
| 2600              | Ore Dictionary        |
| 2500              | Unification           |
| 2400              | Classes               |
| 2399              | Class Registering     |
| 0 (Not Set)       | Normal Scripts        |
| -100              | Run Script            | **DON'T CHANGE** |
