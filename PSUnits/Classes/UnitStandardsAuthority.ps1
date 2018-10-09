class UnitStandardsAuthority {
    [ValidateNotNullOrEmpty()] [String] $Name
    [ValidateNotNullOrEmpty()] [String] $Acronym

    hidden UnitStandardsAuthority ([String] $Name, [String] $Acronym) {
        $this.Name = $Name
        $this.Acronym = $Acronym
    }

    static [UnitStandardsAuthority] $BIPM
    static [UnitStandardsAuthority] $IEC

    static [UnitStandardsAuthority[]] $Instances

    hidden static UnitStandardsAuthority () {
        [UnitStandardsAuthority]::BIPM = [UnitStandardsAuthority]::new(
            'International Bureau of Weights and Measures',
            'BIPM'
        )
        [UnitStandardsAuthority]::IEC = [UnitStandardsAuthority]::new(
            'International Electrotechnical Commission',
            'IEC'
        )
        [UnitStandardsAuthority]::Instances = @(
            [UnitStandardsAuthority]::BIPM
            [UnitStandardsAuthority]::IEC
        )
    }
}