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
    public var seed1 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.IV)
    }
    
    // major : I -> V
    public var seed2 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.V)
    }
    
    // major : IV -> I
    public var seed3 : GWSeed {
        return GWSeed(head_chord: self.major_chords.IV, tail_chord: self.major_chords.I)
    }
    
    // major : IV -> V
    public var seed4 : GWSeed {
        return GWSeed(head_chord: self.major_chords.IV, tail_chord: self.major_chords.V)
    }
    
    // major : V -> I
    public var seed5 : GWSeed {
        return GWSeed(head_chord: self.major_chords.V, tail_chord: self.major_chords.I)
    }
    
    // relative natural major : I -> IV
    public var seed6 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.I, tail_chord: self.relative_natural_minor_chords.IV)
    }
    
    // relative natural minor : I -> V
    public var seed7 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.I, tail_chord: self.relative_natural_minor_chords.V)
    }
    
    // relative natural minor : IV -> I
    public var seed8 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.IV, tail_chord: self.relative_natural_minor_chords.I)
    }
    
    // relative natural minor : IV -> V
    public var seed9 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.IV, tail_chord: self.relative_natural_minor_chords.V)
    }
    
    // relative natural minor : V -> I
    public var seed10 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords.V, tail_chord: self.relative_natural_minor_chords.I)
    }
    
    // parallel natural major : I -> IV
    public var seed11 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.I, tail_chord: self.parallel_natural_minor_chords.IV)
    }
    
    // parallel natural minor : I -> V
    public var seed12 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.I, tail_chord: self.parallel_natural_minor_chords.V)
    }
    
    // parallel natural minor : IV -> I
    public var seed13 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.IV, tail_chord: self.parallel_natural_minor_chords.I)
    }
    
    // parallel natural minor : IV -> V
    public var seed14 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.IV, tail_chord: self.parallel_natural_minor_chords.V)
    }
    
    // parallel natural minor : V -> I
    public var seed15 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords.V, tail_chord: self.parallel_natural_minor_chords.I)
    }
    
    // relative harmonic major : I -> IV
    public var seed16 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.I, tail_chord: self.relative_harmonic_minor_chords.IV)
    }
    
    // relative harmonic minor : I -> V
    public var seed17 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.I, tail_chord: self.relative_harmonic_minor_chords.V)
    }
    
    // relative harmonic minor : IV -> I
    public var seed18 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.IV, tail_chord: self.relative_harmonic_minor_chords.I)
    }
    
    // relative harmonic minor : IV -> V
    public var seed19 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.IV, tail_chord: self.relative_harmonic_minor_chords.V)
    }
    
    // relative harmonic minor : V -> I
    public var seed20 : GWSeed {
        return GWSeed(head_chord: self.relative_harmonic_minor_chords.V, tail_chord: self.relative_harmonic_minor_chords.I)
    }
    
    // parallel harmonic major : I -> IV
    public var seed21 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.I, tail_chord: self.parallel_harmonic_minor_chords.IV)
    }
    
    // parallel harmonic minor : I -> V
    public var seed22 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.I, tail_chord: self.parallel_harmonic_minor_chords.V)
    }
    
    // parallel harmonic minor : IV -> I
    public var seed23 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.IV, tail_chord: self.parallel_harmonic_minor_chords.I)
    }
    
    // parallel harmonic minor : IV -> V
    public var seed24 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.IV, tail_chord: self.parallel_harmonic_minor_chords.V)
    }
    
    // parallel harmonic minor : V -> I
    public var seed25 : GWSeed {
        return GWSeed(head_chord: self.parallel_harmonic_minor_chords.V, tail_chord: self.parallel_harmonic_minor_chords.I)
    }
    
    // relative melodic major : I -> IV
    public var seed26 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.I, tail_chord: self.relative_melodic_minor_chords.IV)
    }
    
    // relative melodic minor : I -> V
    public var seed27 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.I, tail_chord: self.relative_melodic_minor_chords.V)
    }
    
    // relative melodic minor : IV -> I
    public var seed28 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.IV, tail_chord: self.relative_melodic_minor_chords.I)
    }
    
    // relative melodic minor : IV -> V
    public var seed29 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.IV, tail_chord: self.relative_melodic_minor_chords.V)
    }
    
    // relative melodic minor : V -> I
    public var seed30 : GWSeed {
        return GWSeed(head_chord: self.relative_melodic_minor_chords.V, tail_chord: self.relative_melodic_minor_chords.I)
    }
    
    // parallel melodic major : I -> IV
    public var seed31 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.I, tail_chord: self.parallel_melodic_minor_chords.IV)
    }
    
    // parallel melodic minor : I -> V
    public var seed32 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.I, tail_chord: self.parallel_melodic_minor_chords.V)
    }
    
    // parallel melodic minor : IV -> I
    public var seed33 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.IV, tail_chord: self.parallel_melodic_minor_chords.I)
    }
    
    // parallel melodic minor : IV -> V
    public var seed34 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.IV, tail_chord: self.parallel_melodic_minor_chords.V)
    }
    
    // parallel melodic minor : V -> I
    public var seed35 : GWSeed {
        return GWSeed(head_chord: self.parallel_melodic_minor_chords.V, tail_chord: self.parallel_melodic_minor_chords.I)
    }
    
    // major : I -> III
    public var seed36 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.III)
    }
    
    // major : I -> VI
    public var seed37 : GWSeed {
        return GWSeed(head_chord: self.major_chords.I, tail_chord: self.major_chords.VI)
    }
    
    // major : IV -> II
    public var seed38 : GWSeed {
        return GWSeed(head_chord: self.major_chords.IV, tail_chord: self.major_chords.II)
    }
    
    public var genetically_modified_seeds : [GWSeed] {
        
        var storehouse : [[GWSeed]] = [[]]
        var gmseeds : [GWSeed] = []
        
        // major : I -> IV
        var seed = self.seed1
        
        // T -> IV
        var gmseed = GWSeed(head_chord: self.major_chords.III, tail_chord: seed.tail_chord)
        
        gmseeds.append(gmseed)
        gmseed.head_chord = self.major_chords.VI
        gmseeds.append(gmseed)
        
        // T -> II
        for gm in gmseeds {
            gmseed = GWSeed(head_chord: gm.head_chord, tail_chord: self.major_chords.II)
            gmseeds.append(gmseed)
        }
        
        // I -> II
        gmseed = GWSeed(head_chord: seed.head_chord, tail_chord: self.major_chords.II)
        gmseeds.append(gmseed)
        
        storehouse.append(gmseeds)
        gmseeds = []
        
        // major : I -> V
        gmseed = self.seed2
        
        // T -> V
        gmseed.head_chord = self.major_chords.III
        gmseeds.append(gmseed)
        gmseed.head_chord = self.major_chords.VI
        gmseeds.append(gmseed)
        
        storehouse.append(gmseeds)
        gmseeds = []
        
        // major : IV -> I
        seed = self.seed3
        
        // IV -> T
        gmseed = GWSeed(head_chord: seed.head_chord, tail_chord: self.major_chords.III)
        gmseeds.append(gmseed)
        gmseed.tail_chord = self.major_chords.VI
        gmseeds.append(gmseed)
        
        // II -> T
        for gm in gmseeds {
            gmseed = GWSeed(head_chord: self.major_chords.II, tail_chord: gm.tail_chord)
            gmseeds.append(gmseed)
        }
        
        // II -> I
        gmseed = GWSeed(head_chord: self.major_chords.II, tail_chord: seed.tail_chord)
        gmseeds.append(gmseed)
        
        storehouse.append(gmseeds)
        gmseeds = []
        
        // major : IV -> V
        gmseed = self.seed4
        
        // II -> V
        gmseed.head_chord = self.major_chords.II
        gmseeds.append(gmseed)
        
        storehouse.append(gmseeds)
        gmseeds = []
        
        // major : V -> I
        gmseed = self.seed5
        
        // V -> T
        gmseed.tail_chord = self.major_chords.III
        gmseeds.append(gmseed)
        gmseed.tail_chord = self.major_chords.VI
        gmseeds.append(gmseed)
        
        storehouse.append(gmseeds)
        gmseeds = []
        
        for gms in storehouse {
            gmseeds += gms
        }
        
        return gmseeds
        
    }
    
}
