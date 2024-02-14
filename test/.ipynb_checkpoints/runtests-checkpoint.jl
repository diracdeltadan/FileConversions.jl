using FileConversions
using Test

@testset "FileConversions.jl" begin
    df = CSV.read("sample.csv", DataFrame)
    @test (3, 3) == size(df)
    df2 = load_csv_to_df("sample.csv")
    @test df == df2
end
