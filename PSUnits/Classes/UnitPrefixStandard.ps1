class UnitPrefixStandard {
    [ValidateNotNullOrEmpty()] [String] $Name
    [ValidateNotNullOrEmpty()] [String] $Acronym
    [ValidateNotNullOrEmpty()] [String] $Word
    [ValidateNotNullOrEmpty()] [NumeralSystem] $NumeralSystem
    [ValidateNotNullOrEmpty()] [UnitStandardsAuthority] $Authority
    [ValidateNotNullOrEmpty()] [String] $Document

    hidden UnitPrefixStandard (
        [String] $Name,
        [String] $Acronym,
        [String] $Word,
        [NumeralSystem] $NumeralSystem,
        [UnitStandardsAuthority] $Authority,
        [String] $Document
    ) {
        $this.Name = $Name
        $this.Acronym = $Acronym
        $this.Word = $Word
        $this.NumeralSystem = $NumeralSystem
        $this.Authority = $Authority
        $this.Document = $Document
    }

    static [UnitPrefixStandard] $SI
    static [UnitPrefixStandard] $IEC

    static [UnitPrefixStandard[]] $Instances

    hidden static UnitPrefixStandard () {
        [UnitPrefixStandard]::SI  = [UnitPrefixStandard]::new(
            'International System of Units',
            'SI',
            'metric',
            [NumeralSystem]::Decimal,
            [UnitStandardsAuthority]::BIPM,
            'ISO 80000-1'
        )
        [UnitPrefixStandard]::IEC = [UnitPrefixStandard]::new(
            'IEC Prefixes',
            'IEC',
            'digital',
            [NumeralSystem]::Binary,
            [UnitStandardsAuthority]::IEC,
            'ISO 80000-1'
        )
        [UnitPrefixStandard]::Instances = @(
            [UnitPrefixStandard]::SI
            [UnitPrefixStandard]::IEC
        )
    }
}