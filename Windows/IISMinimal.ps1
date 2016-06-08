Configuration IISMinimal
{
  param ("localhost")

  Node $MachineName
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
  }
} 