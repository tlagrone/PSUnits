

# Source Members
@('Private', 'Public') |
    ForEach-Object { Get-ChildItem -Path "$PSScriptRoot\$_\*.ps1" } |
    ForEach-Object { . $_ }

# Export Public Members
Get-ChildItem -Path "$PSScriptRoot\Public\*.ps1" |
    Select-Object -ExpandProperty 'Name' |
    ForEach-Object { $_.Substring(0, $_.Length - '.ps1'.Length) } |  # remove file extension
    ForEach-Object { @{ Name = $_.Split('.')[0]; Type = $_.Split('.')[1] } } |  # parse member name and type
    ForEach-Object { if ($null -eq $_['Type']) { $_['Type'] = 'function' } } |  # set default member type
    ForEach-Object {
        $Name = $_['Name']
        switch ($_['Type']) {
            'alias'    { Export-ModuleMember -Alias    $Name }
            'cmdlet'   { Export-ModuleMember -Cmdlet   $Name }
            'function' { Export-ModuleMember -Function $Name }
            'variable' { Export-ModuleMember -Variable $Name }
            default { Write-Error -Message "Unsupported type ""$_"" for exporting module member ""$Name""" }
        }
    }
