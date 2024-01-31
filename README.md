# Hacknet-Patch-ClockV2

Powershell based patch script for Hacknet, which fix a bug in Hacknet.

The English and language translations are out of sync, which cause this bug. In Hacknet's translations of Chinese, French, Japanese, Korean, Russian, Spanish and Turkish, The IP address in the memorydump of `Head of the Polar Star` is differend from the IP of `The Gibson` (which has `ClockV2.exe`). In German, the two IP addresses are the same, but they are not randomly generated.

Star this repository if you think it is useful!

# Usage

> [!WARNING]
> The script should be run on **Windows**. Although powershell is cross-platform, these scripts is not guaranteed to work properly on other platforms. The script will **change the game content**. In some cases you may not want to do this.

Download the Script files from Releases or clone this repository.

```bash
git clone https://github.com/FBIKdot/Hacknet-Patch-ClockV2.git
cd Hacknet-Patch-ClockV2/src
```

Run the patch script.

```bash
# If you are using the PowerShell Core, which is built-in on a newer version of Windows
powershell src/patch.ps1

# If you are using Powershell 7
pwsh src/patch.ps1
```
