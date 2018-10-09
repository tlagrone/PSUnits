class NumeralSystem {
    [ValidateNotNullOrEmpty()] [String] $Name
    [ValidateNotNullOrEmpty()] [Int]    $Base
    [ValidateNotNullOrEmpty()] [Int]    $Factor
    [ValidateNotNullOrEmpty()] [Int]    $FactorExponentOfBase

    hidden NumeralSystem ([String] $Name, [Int] $Base, [Int] $Factor, [Int] $FactorExponentOfBase) {
        $this.Name   = $Name
        $this.Base   = $Base
        $this.Factor = $Factor
        $this.FactorExponentOfBase = $FactorExponentOfBase
    }

    static [NumeralSystem] $Decimal
    static [NumeralSystem] $Binary

    static [NumeralSystem[]] $Instances

    hidden static NumeralSystem () {
        [NumeralSystem]::Decimal = [NumeralSystem]::new('decimal', 10, 1000,  3)
        [NumeralSystem]::Binary  = [NumeralSystem]::new('binary',   2, 1024, 10)
        [NumeralSystem]::Instances = @(
            [NumeralSystem]::Decimal
            [NumeralSystem]::Binary
        )
    }
}