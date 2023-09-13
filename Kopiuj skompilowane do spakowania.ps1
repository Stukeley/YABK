# Ustaw folder bazowy
$baseFolder = $PSScriptRoot

$sourcePaths = @(
    "SolYet Another Bitwa Kr�l�w\PrjGOTHIC\Gothic.dat",
    "SolYet Another Bitwa Kr�l�w\PrjGOTHIC\Gothic.src",
    "SolYet Another Bitwa Kr�l�w\PrjGOTHIC\OU.bin"
)

$destinationPaths = @(
    "Do spakowania\_WORK\DATA\SCRIPTS\_COMPILED\Gothic.dat",
    "Do spakowania\_WORK\DATA\SCRIPTS\CONTENT\Gothic.src",
    "Do spakowania\_WORK\DATA\SCRIPTS\CONTENT\CUTSCENE\OU.bin"
)

for ($i = 0; $i -lt $sourcePaths.Count; $i++) {
    $sourcePath = Join-Path -Path $baseFolder -ChildPath $sourcePaths[$i]
    $destinationPath = Join-Path -Path $baseFolder -ChildPath $destinationPaths[$i]

    if (Test-Path $sourcePath -PathType Leaf) {
        Copy-Item -Path $sourcePath -Destination $destinationPath -Force
        Write-Host "Copied $($sourcePath) to $($destinationPath)"
    } else {
        Write-Host "Source file not found: $($sourcePath)"
    }
}