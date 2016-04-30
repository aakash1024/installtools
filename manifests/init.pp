class installtools {
  exec { 'precheck installer':
    provider => 'powershell',
    command  => template("install_tools.ps1.erb"),
    onlyif   => template("check_oracle.ps1.erb"),
  }

}
