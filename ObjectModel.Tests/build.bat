mkdir ..\packages
call NuGetRestorePackagesOnly.bat VersionOne.SDK.ObjectModel.Tests.csproj %1
call NuGetUpdatePackages.bat packages.config 
msbuild VersionOne.SDK.ObjectModel.Tests.csproj /p:V1BuildToolsPath=%1 ^
/p:NuGetExePath=%1\NuGet.exe ^
/p:RequireRestoreConsent=false ^
/p:Configuration=Release ^
/p:Platform=AnyCPU ^
/p:Major=12 ^
/p:Minor=3 ^
/p:Revision=0 ^
/p:AssemblyInformationalVersion="See https://github.com/versionone/VersionOne.SDK.NET.ObjectModel/wiki" ^
/p:AssemblyCopyright="Copyright 2012, VersionOne, Inc. Licensed under modified BSD." ^
/p:CompanyName="VersionOne, Inc" ^
/p:AssemblyProduct="VersionOne.SDK.ObjectModel.Tests" ^
/p:AssemblyTitle="VersionOne SDK Object Model Tests" ^
/p:AssemblyDescription="VersionOne SDK .NET Object Model Tests Release Build" ^
/p:SignAssembly=%SIGN_ASSEMBLY% ^
/p:AssemblyOriginatorKeyFile=%SIGNING_KEY%