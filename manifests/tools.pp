class installtools::tools {
  exec { 'precheck installer':
    provider => 'powershell',
    command  => template("${module_name}/install_tools.ps1.erb"),
    onlyif   => ['powershell.exe -ExecutionPolicy ByPass -command {if (Test-Path c:\oracle\oledb) { exit 1;}  else { exit 0;}}',],
  }

}
