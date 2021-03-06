include("../src/Bioinformatics.jl")
using Bioinformatics
if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@test verifyDna("ACGT") == true
@test_throws ErrorException verifyDna("ACFY") == false
@test countBases("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC") == (20, 12, 17, 21)
@test transcribeDna("GATGGAACTTGACTACGTAAATT") == "GAUGGAACUUGACUACGUAAAUU"
@test reverseComplement("AAAACCCGGT") == "ACCGGGTTTT"
@test round(gcContent("CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT"), 2) == 60.92
