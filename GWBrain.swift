//
//  GWBrain.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/12/25.
//

import Foundation

class GWBrain {
    
    private var major_chords : GWDegrees
    
    private var relative_natural_minor_chords : GWDegrees
    private var relative_harmonic_minor_chords : GWDegrees
    private var relative_melodic_minor_chords : GWDegrees
    
    private var parallel_natural_minor_chords : GWDegrees
    private var parallel_harmonic_minor_chords : GWDegrees
    private var parallel_melodic_minor_chords : GWDegrees
    
    init(_ major_scale : GWScale.Major) {
        
        let relative_natural_minor_scale = GWRelativeKey(major_scale).natural_minor_scale
        let relative_harmonic_minor_scale = GWRelativeKey(major_scale).harmonic_minor_scale
        let relative_melodic_minor_scale = GWRelativeKey(major_scale).melodic_minor_scale
        
        let parallel_natural_minor_scale = GWParallelKey(major_scale).natural_minor_scale
        let parallel_harmonic_minor_scale = GWParallelKey(major_scale).harmonic_minor_scale
        let parallel_melodic_minor_scale = GWParallelKey(major_scale).melodic_minor_scale
        
        self.major_chords = GWChords.of(major_scale)
        
        self.relative_natural_minor_chords = GWChords.of(relative_natural_minor_scale)
        self.relative_harmonic_minor_chords = GWChords.of(relative_harmonic_minor_scale)
        self.relative_melodic_minor_chords = GWChords.of(relative_melodic_minor_scale)
        
        self.parallel_natural_minor_chords = GWChords.of(parallel_natural_minor_scale)
        self.parallel_harmonic_minor_chords = GWChords.of(parallel_harmonic_minor_scale)
        self.parallel_melodic_minor_chords = GWChords.of(parallel_melodic_minor_scale)
        
    }
    
    // major : I -> IV
    private var seed1 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.IV)
    }
    
    // major : I -> V
    private var seed2 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.V)
    }
    
    // major : IV -> I
    private var seed3 : GWSeed {
        return GWSeed(head_chord: self.major_chords.IV, tail_chord: self.major_chords.I)
    }
    
    // major : IV -> V
    private var seed4 : GWSeed {
        return GWSeed(head_chord: self.major_chords.IV, tail_chord: self.major_chords.V)
    }
    
    // major : V -> I
    private var seed5 : GWSeed {
        return GWSeed(head_chord: self.major_chords.V, tail_chord: self.major_chords.I)
    }
    
    // relative natural major : I -> IV
    private var seed6 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.I, tail_chord: self.relative_natural_minor_chords.IV)
    }
    
    // relative natural minor : I -> V
    private var seed7 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.I, tail_chord: self.relative_natural_minor_chords.V)
    }
    
    // relative natural minor : IV -> I
    private var seed8 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.IV, tail_chord: self.relative_natural_minor_chords.I)
    }
    
    // relative natural minor : IV -> V
    private var seed9 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.IV, tail_chord: self.relative_natural_minor_chords.V)
    }
    
    // relative natural minor : V -> I
    private var seed10 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.V, tail_chord: self.relative_natural_minor_chords.I)
    }
    
    // parallel natural major : I -> IV
    private var seed11 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.I, tail_chord: self.parallel_natural_minor_chords.IV)
    }
    
    // parallel natural minor : I -> V
    private var seed12 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.I, tail_chord: self.parallel_natural_minor_chords.V)
    }
    
    // parallel natural minor : IV -> I
    private var seed13 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.IV, tail_chord: self.parallel_natural_minor_chords.I)
    }
    
    // parallel natural minor : IV -> V
    private var seed14 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.IV, tail_chord: self.parallel_natural_minor_chords.V)
    }
    
    // parallel natural minor : V -> I
    private var seed15 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.V, tail_chord: self.parallel_natural_minor_chords.I)
    }
    
    // relative harmonic minor : I -> IV
    private var seed16 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.I, tail_chord: self.relative_harmonic_minor_chords.IV)
    }
    
    // relative harmonic minor : I -> V
    private var seed17 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.I, tail_chord: self.relative_harmonic_minor_chords.V)
    }
    
    // relative harmonic minor : IV -> I
    private var seed18 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.IV, tail_chord: self.relative_harmonic_minor_chords.I)
    }
    
    // relative harmonic minor : IV -> V
    private var seed19 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.IV, tail_chord: self.relative_harmonic_minor_chords.V)
    }
    
    // relative harmonic minor : V -> I
    private var seed20 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.V, tail_chord: self.relative_harmonic_minor_chords.I)
    }
    
    // parallel harmonic minor : I -> IV
    private var seed21 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.I, tail_chord: self.parallel_harmonic_minor_chords.IV)
    }
    
    // parallel harmonic minor : I -> V
    private var seed22 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.I, tail_chord: self.parallel_harmonic_minor_chords.V)
    }
    
    // parallel harmonic minor : IV -> I
    private var seed23 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.IV, tail_chord: self.parallel_harmonic_minor_chords.I)
    }
    
    // parallel harmonic minor : IV -> V
    private var seed24 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.IV, tail_chord: self.parallel_harmonic_minor_chords.V)
    }
    
    // parallel harmonic minor : V -> I
    private var seed25 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.V, tail_chord: self.parallel_harmonic_minor_chords.I)
    }
    
    // relative melodic major : I -> IV
    private var seed26 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.I, tail_chord: self.relative_melodic_minor_chords.IV)
    }
    
    // relative melodic minor : I -> V
    private var seed27 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.I, tail_chord: self.relative_melodic_minor_chords.V)
    }
    
    // relative melodic minor : IV -> I
    private var seed28 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.IV, tail_chord: self.relative_melodic_minor_chords.I)
    }
    
    // relative melodic minor : IV -> V
    private var seed29 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.IV, tail_chord: self.relative_melodic_minor_chords.V)
    }
    
    // relative melodic minor : V -> I
    private var seed30 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.V, tail_chord: self.relative_melodic_minor_chords.I)
    }
    
    // parallel melodic minor : I -> IV
    private var seed31 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.I, tail_chord: self.parallel_melodic_minor_chords.IV)
    }
    
    // parallel melodic minor : I -> V
    private var seed32 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.I, tail_chord: self.parallel_melodic_minor_chords.V)
    }
    
    // parallel melodic minor : IV -> I
    private var seed33 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.IV, tail_chord: self.parallel_melodic_minor_chords.I)
    }
    
    // parallel melodic minor : IV -> V
    private var seed34 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.IV, tail_chord: self.parallel_melodic_minor_chords.V)
    }
    
    // parallel melodic minor : V -> I
    private var seed35 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.V, tail_chord: self.parallel_melodic_minor_chords.I)
    }
    
    // major : I -> III
    private var seed36 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.III)
    }
    
    // major : I -> VI
    private var seed37 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.VI)
    }
    
    // major : IV -> II
    private var seed38 : GWSeed {
        return GWSeed(head_chord: self.major_chords.IV, tail_chord: self.major_chords.II)
    }
    
    // relative harmonic minor : I -> III
    private var seed39 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.I, tail_chord: self.relative_harmonic_minor_chords.III)
    }
    
    // relative harmonic minor : V -> VII
    private var seed40 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.V, tail_chord: self.relative_harmonic_minor_chords.VII)
    }
    
    // relative melodic minor : IV -> II
    private var seed41 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.IV, tail_chord: self.relative_melodic_minor_chords.II)
    }
    
    // parallel natural minor : I -> III
    private var seed42 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.I, tail_chord: self.parallel_natural_minor_chords.III)
    }
    
    // parallel natural minor : IV -> VI
    private var seed43 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.IV, tail_chord: self.parallel_natural_minor_chords.VI)
    }
    
    // parallel natural minor : V -> VII
    private var seed44 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.V, tail_chord: self.parallel_natural_minor_chords.VII)
    }
    
    // parallel harmonic minor : I -> III
    private var seed45 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.I, tail_chord: self.parallel_harmonic_minor_chords.III)
    }
    
    // parallel harmonic minor : V -> VII
    private var seed46 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.V, tail_chord: self.parallel_harmonic_minor_chords.VII)
    }
    
    public var genetically_modified_seeds : [GWSeed] {
        
        var gmseeds = major_tonic_convertor()
        
        gmseeds += major_subdominant_convertor(gmseeds)
        gmseeds += relative_harmonic_minor_tonic_convertor()
        gmseeds += relative_harmonic_minor_subdominant_convertor()
        gmseeds += relative_harmonic_minor_dominant_convertor()
        gmseeds += relative_melodic_minor_tonic_convertor()
        gmseeds += relative_melodic_minor_subdominant_convertor()
        gmseeds += parallel_natural_minor_tonic_convertor()
        gmseeds += parallel_natural_minor_subdominant_convertor()
        gmseeds += parallel_natural_minor_dominant_convertor()
        gmseeds += parallel_harmonic_minor_tonic_convertor()
        gmseeds += parallel_harmonic_minor_subdominant_convertor()
        gmseeds += parallel_harmonic_minor_dominant_convertor()
        gmseeds += parallel_melodic_minor_tonic_convertor()
        gmseeds += parallel_melodic_minor_subdominant_convertor()
        
        return gmseeds
        
    }
    
    private func major_tonic_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // major : I -> IV
        var seed = self.seed1
        
        // T -> IV
        seed.head_chord = self.major_chords.III
        gmseeds.append(seed)
        seed.head_chord = self.major_chords.VI
        gmseeds.append(seed)
        
        // major : I -> V
        seed = self.seed2
        
        // T -> V
        seed.head_chord = self.major_chords.III
        gmseeds.append(seed)
        seed.head_chord = self.major_chords.VI
        gmseeds.append(seed)
        
        // major : IV -> I
        seed = self.seed3
        
        // IV -> T
        seed.tail_chord = self.major_chords.III
        gmseeds.append(seed)
        seed.tail_chord = self.major_chords.VI
        gmseeds.append(seed)
        
        // major : V -> I
        seed = self.seed5
        
        // V -> T
        seed.tail_chord = self.major_chords.III
        gmseeds.append(seed)
        seed.tail_chord = self.major_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func major_subdominant_convertor(_ gmseeds : [GWSeed]) -> [GWSeed] {
        
        var outGMSeeds : [GWSeed] = []
        
        // major : T -> IV
        var inGMSeeds = gmseeds.filter{
            ($0.head_chord == self.major_chords.III && $0.tail_chord == self.major_chords.IV)
            || ($0.head_chord == self.major_chords.VI && $0.tail_chord == self.major_chords.IV)
        }
        
        // T -> II
        for gmseed in inGMSeeds {
            outGMSeeds.append(GWSeed(head_chord: gmseed.head_chord, tail_chord: self.major_chords.II))
        }
        
        // major : I -> IV
        var seed = self.seed1
        
        // I -> II
        seed.tail_chord = self.major_chords.II
        outGMSeeds.append(seed)
        
        // major : IV -> T
        inGMSeeds = gmseeds.filter{
            ($0.head_chord == self.major_chords.IV && $0.tail_chord == self.major_chords.III)
            || ($0.head_chord == self.major_chords.IV && $0.tail_chord == self.major_chords.VI)
        }
        
        // II -> T
        for gmseed in inGMSeeds {
            outGMSeeds.append(GWSeed(head_chord: self.major_chords.II, tail_chord: gmseed.tail_chord))
        }
        
        // major : IV -> I
        seed = self.seed3
        
        // II -> I
        seed.head_chord = self.major_chords.II
        outGMSeeds.append(seed)
        
        // major : IV -> V
        seed = self.seed4
        
        // II -> V
        seed.head_chord = self.major_chords.II
        outGMSeeds.append(seed)
        
        return outGMSeeds
        
    }
    
    private func relative_harmonic_minor_tonic_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // relative harmonic minor : I -> IV
        var seed = self.seed16
        
        // III -> IV
        seed.head_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : I -> V
        seed = self.seed17
        
        // III -> V
        seed.head_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : IV -> I
        seed = self.seed18
        
        // IV -> III
        seed.tail_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : V -> I
        seed = self.seed20
        
        // V -> III
        seed.tail_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func relative_harmonic_minor_subdominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // relative harmonic minor : I -> IV
        var seed = self.seed16
        
        // I -> VI
        seed.tail_chord = self.relative_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        // III -> VI
        seed.head_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : IV -> I
        seed = self.seed18
        
        // VI -> I
        seed.head_chord = self.relative_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        // VI -> III
        seed.tail_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : IV -> V
        seed = self.seed19
        
        // VI -> V
        seed.head_chord = self.relative_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func relative_harmonic_minor_dominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // relative harmonic minor : I -> V
        var seed = self.seed17
        
        // I -> VII
        seed.tail_chord = self.relative_harmonic_minor_chords.VII
        gmseeds.append(seed)
        
        // III -> VII
        seed.head_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : V -> I
        seed = self.seed20
        
        // VII -> I
        seed.head_chord = self.relative_harmonic_minor_chords.VII
        gmseeds.append(seed)
        
        // VII -> III
        seed.tail_chord = self.relative_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // relative harmonic minor : IV -> V
        seed = self.seed19
        
        // IV -> VII
        seed.tail_chord = self.relative_harmonic_minor_chords.VII
        gmseeds.append(seed)
        
        // VI -> VII
        seed.head_chord = self.relative_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func relative_melodic_minor_tonic_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // relative melodic minor : I -> IV
        var seed = self.seed26
        
        // III -> IV
        seed.head_chord = self.relative_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // relative melodic minor : I -> V
        seed = self.seed27
        
        // III -> V
        seed.head_chord = self.relative_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // relative melodic minor : IV -> I
        seed = self.seed28
        
        // IV -> III
        seed.tail_chord = self.relative_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // relative melodic minor : V -> I
        seed = self.seed30
        
        // V -> III
        seed.tail_chord = self.relative_melodic_minor_chords.III
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func relative_melodic_minor_subdominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // relative melodic minor : I -> IV
        var seed = self.seed26
        
        // I -> II
        seed.tail_chord = self.relative_melodic_minor_chords.II
        gmseeds.append(seed)
        
        // III -> II
        seed.head_chord = self.relative_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // relative melodic minor : IV -> I
        seed = self.seed28
        
        // II -> I
        seed.head_chord = self.relative_melodic_minor_chords.II
        gmseeds.append(seed)
        
        // II -> III
        seed.tail_chord = self.relative_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // relative melodic minor : IV -> V
        seed = self.seed29
        
        // II -> V
        seed.head_chord = self.relative_melodic_minor_chords.II
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_natural_minor_tonic_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel natural minor : I -> IV
        var seed = self.seed11
        
        // III -> IV
        seed.head_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : I -> V
        seed = self.seed12
        
        // III -> V
        seed.head_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : IV -> I
        seed = self.seed13
        
        // IV -> III
        seed.tail_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : V -> I
        seed = self.seed15
        
        // V -> III
        seed.tail_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_natural_minor_subdominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel natural minor : I -> IV
        var seed = self.seed11
        
        // I -> VI
        seed.tail_chord = self.parallel_natural_minor_chords.VI
        gmseeds.append(seed)
        
        // III -> VI
        seed.head_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : IV -> I
        seed = self.seed13
        
        // VI -> I
        seed.head_chord = self.parallel_natural_minor_chords.VI
        gmseeds.append(seed)
        
        // VI -> III
        seed.tail_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : IV -> V
        seed = self.seed14
        
        // VI -> V
        seed.head_chord = self.parallel_natural_minor_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_natural_minor_dominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel natural minor : I -> V
        var seed = self.seed12
        
        // I -> VII
        seed.tail_chord = self.parallel_natural_minor_chords.VII
        gmseeds.append(seed)
        
        // III -> VII
        seed.head_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : V -> I
        seed = self.seed15
        
        // VII -> I
        seed.head_chord = self.parallel_natural_minor_chords.VII
        gmseeds.append(seed)
        
        // VII -> III
        seed.tail_chord = self.parallel_natural_minor_chords.III
        gmseeds.append(seed)
        
        // parallel natural minor : IV -> V
        seed = self.seed14
        
        // IV -> VII
        seed.tail_chord = self.parallel_natural_minor_chords.VII
        gmseeds.append(seed)
        
        // VI -> VII
        seed.head_chord = self.parallel_natural_minor_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_harmonic_minor_tonic_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel harmonic minor : I -> IV
        var seed = self.seed21
        
        // III -> IV
        seed.head_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : I -> V
        seed = self.seed22
        
        // III -> V
        seed.head_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : IV -> I
        seed = self.seed23
        
        // IV -> III
        seed.tail_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : V -> I
        seed = self.seed25
        
        // V -> III
        seed.tail_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_harmonic_minor_subdominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel harmonic minor : I -> IV
        var seed = self.seed21
        
        // I -> VI
        seed.tail_chord = self.parallel_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        // III -> VI
        seed.head_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : IV -> I
        seed = self.seed23
        
        // VI -> I
        seed.head_chord = self.parallel_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        // VI -> III
        seed.tail_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : IV -> V
        seed = self.seed24
        
        // VI -> V
        seed.head_chord = self.parallel_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_harmonic_minor_dominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel harmonic minor : I -> V
        var seed = self.seed22
        
        // I -> VII
        seed.tail_chord = self.parallel_harmonic_minor_chords.VII
        gmseeds.append(seed)
        
        // III -> VII
        seed.head_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : V -> I
        seed = self.seed25
        
        // VII -> I
        seed.head_chord = self.parallel_harmonic_minor_chords.VII
        gmseeds.append(seed)
        
        // VII -> III
        seed.tail_chord = self.parallel_harmonic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel harmonic minor : IV -> V
        seed = self.seed24
        
        // IV -> VII
        seed.tail_chord = self.parallel_harmonic_minor_chords.VII
        gmseeds.append(seed)
        
        // VI -> VII
        seed.head_chord = self.parallel_harmonic_minor_chords.VI
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_melodic_minor_tonic_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel melodic minor : I -> IV
        var seed = self.seed31
        
        // III -> IV
        seed.head_chord = self.parallel_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel melodic minor : I -> V
        seed = self.seed32
        
        // III -> V
        seed.head_chord = self.parallel_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel melodic minor : IV -> I
        seed = self.seed33
        
        // IV -> III
        seed.tail_chord = self.parallel_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel melodic minor : V -> I
        seed = self.seed35
        
        // V -> III
        seed.tail_chord = self.parallel_melodic_minor_chords.III
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
    private func parallel_melodic_minor_subdominant_convertor() -> [GWSeed] {
        
        var gmseeds : [GWSeed] = []
        
        // parallel melodic minor : I -> IV
        var seed = self.seed31
        
        // I -> II
        seed.tail_chord = self.parallel_melodic_minor_chords.II
        gmseeds.append(seed)
        
        // III -> II
        seed.head_chord = self.parallel_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel melodic minor : IV -> I
        seed = self.seed33
        
        // II -> I
        seed.head_chord = self.parallel_melodic_minor_chords.II
        gmseeds.append(seed)
        
        // II -> III
        seed.tail_chord = self.parallel_melodic_minor_chords.III
        gmseeds.append(seed)
        
        // parallel melodic minor : IV -> V
        seed = self.seed34
        
        // II -> V
        seed.head_chord = self.parallel_melodic_minor_chords.II
        gmseeds.append(seed)
        
        return gmseeds
        
    }
    
}
