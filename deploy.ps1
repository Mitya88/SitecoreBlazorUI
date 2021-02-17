cd src
cd Sitecoreblazorui

dotnet publish -c release --force


cd .. 
cd ..
if(Test-Path -Path .\docker\deploy\website\sitecore\shell\client\applications\sitecoreblazorui\*)
{
    Remove-Item -Path .\docker\deploy\website\sitecore\shell\client\applications\sitecoreblazorui\* -Recurse
}
Copy-Item -Path .\src\SitecoreBlazorUI\bin\release\net5.0\publish\wwwroot\* -Destination .\docker\deploy\website\sitecore\shell\client\applications\sitecoreblazorui -Recurse

