# Original Script https://github.com/JFLarvoire/SysToolsLib/blob/master/PowerShell/PSService.ps1
# Blog: https://docs.microsoft.com/en-us/archive/msdn-magazine/2016/may/windows-powershell-writing-windows-services-in-powershell

Write-Output "Hello world"

$source = @"
    using System;
    class BasicTest
    {
        static void Main() {
            Console.WriteLine("Hello From C#");
        }

    }
"@

Write-Output $basicTest.ToString()

Add-Type -TypeDefinition $source -OutputAssembly "service.exe"