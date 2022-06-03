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

# Write-Output $source.ToString()

$FileName = "service.exe"
If (Test-Path $FileName){
   Remove-Item $FileName
}

Add-Type -TypeDefinition $source -OutputAssembly "service.exe"