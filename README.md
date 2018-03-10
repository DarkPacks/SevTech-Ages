# SevTechAgesConfigs

#### See [here](https://github.com/Darkosto/SevTech-Ages/issues) for public issues.


## Development
We use an editorconfig file to standardize formatting.
You can find the extension for sublime [here](https://github.com/sindresorhus/editorconfig-sublime). Many editors have support by default or have extensions for it.

### Priority List
| Priority Range | Use               |
| -------------- | ----------------- |
| 1100 - 1199    | ContentTweaker    |
| 1000 - 1099    | OreDict           |
| 900 - 999      | Unify             |
| 800 - 899      | Post-Unify Oredict|
| 700 - 799      | Globals           |

## Deployment
### Scripts
1. Remove `scripts/env.dev.zs`
2. Select all scripts inside the scripts folder and zip them. Name it `scripts.zip`.
4. Delete all script files and folders except the zip. (This should result in one file `scripts/scripts.zip`)
