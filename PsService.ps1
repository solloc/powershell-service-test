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