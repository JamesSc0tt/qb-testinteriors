# qb-testinteriors
## What's This?
I created this for testing the K4MB1 interiors on my server (OverlordRP - https://discord.gg/WPtdDpZNWr). It simply uses qb-interior to spawn the interior and teleports you inside it & deletes it and returns you.

## How To?
/testint 1
/delint

## Requirements
 - qb-core (https://github.com/qbcore-framework/qb-core)
 - qb-interior (https://github.com/qbcore-framework/qb-interior)
 - K4MB1 All Shells (https://k4mb1.tebex.io/package/4741607)

## Installing All Shells
1) Download from Tebex (https://k4mb1.tebex.io/package/4741607)
2) Extract contents of RAR file to [qb]/qb-interior/stream/AllShellsBundle
3) Add 'stream/AllShellsBundle/allshellsbundle.ytyp' to files table in fxmanifest of qb-interior
```
files {
	'stream/defaultshells/shellprops.ytyp',
	'stream/startingapt/shellpropsv11.ytyp',
	'stream/AllShellsBundle/allshellsbundle.ytyp',
}
```
4) Add the data_file to the fxmanifest of qb-interior
```
data_file 'DLC_ITYP_REQUEST' 'stream/AllShellsBundle/allshellsbundle.ytyp'
```

## Support
I will not provide support for this resource. Do not join the community discord requesting support.
