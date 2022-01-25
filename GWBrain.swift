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
        
        self.major_chords = GWChords.from(major_scale)
        
        self.relative_natural_minor_chords = GWChords.from(relative_natural_minor_scale)
        self.relative_harmonic_minor_chords = GWChords.from(relative_harmonic_minor_scale)
        self.relative_melodic_minor_chords = GWChords.from(relative_melodic_minor_scale)
        
        self.parallel_natural_minor_chords = GWChords.from(parallel_natural_minor_scale)
        self.parallel_harmonic_minor_chords = GWChords.from(parallel_harmonic_minor_scale)
        self.parallel_melodic_minor_chords = GWChords.from(parallel_melodic_minor_scale)
        
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
    
    // relative harmonic major : I -> IV
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
    
    // parallel harmonic major : I -> IV
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
    
    // parallel melodic major : I -> IV
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
    
    public var genetically_modified_seeds : [GWSeed] {
        
        var gmseeds = major_tonic_convertor()
        
        gmseeds += major_subdominant_convertor(gmseeds)
        
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
    
}
