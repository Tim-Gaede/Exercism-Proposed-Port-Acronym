using Test

include("acronym.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.7.0



@testset "basic" begin
    @test abbreviate("Portable Network Graphics") == "PNG"
end

@testset "lowercase words" begin
    @test abbreviate("Ruby on Rails") == "ROR"
end

@testset "punctuation" begin
    @test abbreviate("First In, First Out") == "FIFO"
end

@testset "all caps word" begin
    @test abbreviate("GNU Image Manipulation Program") == "GIMP"
end

@testset "punctuation without whitespace" begin
    @test abbreviate("Complementary metal-oxide semiconductor") == "CMOS"
end

@testset "very long abbreviation" begin
    @test abbreviate(
            "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
        ) == "ROTFLSHTMDCOALM"
end


@testset "consecutive delimiters" begin
    @test abbreviate("Something - I made up from thin air") == "SIMUFTA"
end

@testset "apostrophes" begin
    @test abbreviate("Halley's Comet") == "HC"
end

@testset "underscore emphasis" begin
    @test abbreviate("The Road _Not_ Taken") == "TRNT"
end
