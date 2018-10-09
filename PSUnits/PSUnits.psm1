

# Source Simple Members
@('Aliases', 'Classes', 'Enums', 'Functions', 'Variables') |
    ForEach-Object { Get-ChildItem "$PSScriptRoot\$_\*.ps1" } |
    ForEach-Object { . $_ }
