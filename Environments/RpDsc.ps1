Configuration ConfigureHost
{
  Import-DscResource -Module cChoco 
  Node "localhost"
  {
    #Install the IIS Role
    WindowsFeature IIS
    {
      Ensure = "Present"
      Name = "Web-Server"
    }

    WindowsFeature WebServerManagementConsole
    {
      Ensure = "Present"
      Name = "Web-Mgmt-Console"
    }

    cChocoInstaller installChoco
    {
      InstallDir = "c:\ProgramData\chocolatey"
    }
  }
} 