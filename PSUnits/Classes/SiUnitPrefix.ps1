class SIUnitPrefix {
    [ValidateNotNullOrEmpty()] [String] $Prefix
    [ValidateNotNullOrEmpty()] [String] $Symbol
    [ValidateNotNullOrEmpty()] [Int] $Base = 10
    [ValidateNotNullOrEmpty()] [Int] $Exponent  # exponent of base
    [ValidateNotNullOrEmpty()] [Int] $Magnitude = 1000
    [ValidateNotNullOrEmpty()] [Int] $Power  # power of magnitude
}