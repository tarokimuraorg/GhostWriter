//
//  GWBrain.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/12/25.
//

import Foundation

class GWBrain {
    
    private var major_chords : [String]
    
    private var relative_natural_minor_chords : [String]
    private var relative_harmonic_minor_chords : [String]
    private var relative_melodic_minor_chords : [String]
    
    private var parallel_natural_minor_chords : [String]
    private var parallel_harmonic_minor_chords : [String]
    private var parallel_melodic_minor_chords : [String]
    
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
        return GWSeed(head_chord: self.major_chords[0], tail_chord: self.major_chords[3])
    }
    
    // major : I -> V
    public var seed2 : GWSeed {
        return GWSeed(head_chord: self.major_chords[0], tail_chord: self.major_chords[4])
    }
    
    // major : IV -> I
    public var seed3 : GWSeed {
        return GWSeed(head_chord: self.major_chords[3], tail_chord: self.major_chords[0])
    }
    
    // major : IV -> V
    public var seed4 : GWSeed {
        return GWSeed(head_chord: self.major_chords[3], tail_chord: self.major_chords[4])
    }
    
    // major : V -> I
    public var seed5 : GWSeed {
        return GWSeed(head_chord: self.major_chords[4], tail_chord: self.major_chords[0])
    }
    
    // relative natural major : I -> IV
    public var seed6 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords[0], tail_chord: self.relative_natural_minor_chords[3])
    }
    
    // relative natural minor : I -> V
    public var seed7 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords[0], tail_chord: self.relative_natural_minor_chords[4])
    }
    
    // relative natural minor : IV -> I
    public var seed8 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords[3], tail_chord: self.relative_natural_minor_chords[0])
    }
    
    // relative natural minor : IV -> V
    public var seed9 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords[3], tail_chord: self.relative_natural_minor_chords[4])
    }
    
    // relative natural minor : V -> I
    public var seed10 : GWSeed {
        return GWSeed(head_chord: self.relative_natural_minor_chords[4], tail_chord: self.relative_natural_minor_chords[0])
    }
    
    // parallel natural major : I -> IV
    public var seed11 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords[0], tail_chord: self.parallel_natural_minor_chords[3])
    }
    
    // parallel natural minor : I -> V
    public var seed12 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords[0], tail_chord: self.parallel_natural_minor_chords[4])
    }
    
    // parallel natural minor : IV -> I
    public var seed13 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords[3], tail_chord: self.parallel_natural_minor_chords[0])
    }
    
    // parallel natural minor : IV -> V
    public var seed14 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords[3], tail_chord: self.parallel_natural_minor_chords[4])
    }
    
    // parallel natural minor : V -> I
    public var seed15 : GWSeed {
        return GWSeed(head_chord: self.parallel_natural_minor_chords[4], tail_chord: self.parallel_natural_minor_chords[0])
    }
    
}
