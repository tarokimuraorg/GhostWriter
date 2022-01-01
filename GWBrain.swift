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
    
    init(major_scale : GWScale.Major) {
        
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
    
}
