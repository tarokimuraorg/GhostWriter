//
//  GWParallelKey.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/12/11.
//

import Foundation

class GWParallelKey : GWMinorScaleProtocol {
    
    public var natural_minor_scale : GWScale.NaturalMinor
    public var harmonic_minor_scale : GWScale.HarmonicMinor
    public var melodic_minor_scale : GWScale.MelodicMinor
    
    init(major_scale : GWScale.Major) {
        
        switch major_scale {
            
        case GWScale.Major.C:
            
            self.natural_minor_scale = GWScale.NaturalMinor.C
            self.harmonic_minor_scale = GWScale.HarmonicMinor.C
            self.melodic_minor_scale = GWScale.MelodicMinor.C
            
        case GWScale.Major.G:
            
            self.natural_minor_scale = GWScale.NaturalMinor.G
            self.harmonic_minor_scale = GWScale.HarmonicMinor.G
            self.melodic_minor_scale = GWScale.MelodicMinor.G
            
        case GWScale.Major.D:
            
            self.natural_minor_scale = GWScale.NaturalMinor.D
            self.harmonic_minor_scale = GWScale.HarmonicMinor.D
            self.melodic_minor_scale = GWScale.MelodicMinor.D
            
        case GWScale.Major.A:
            
            self.natural_minor_scale = GWScale.NaturalMinor.A
            self.harmonic_minor_scale = GWScale.HarmonicMinor.A
            self.melodic_minor_scale = GWScale.MelodicMinor.A
            
        case GWScale.Major.E:
            
            self.natural_minor_scale = GWScale.NaturalMinor.E
            self.harmonic_minor_scale = GWScale.HarmonicMinor.E
            self.melodic_minor_scale = GWScale.MelodicMinor.E
            
        case GWScale.Major.B:
            
            self.natural_minor_scale = GWScale.NaturalMinor.B
            self.harmonic_minor_scale = GWScale.HarmonicMinor.B
            self.melodic_minor_scale = GWScale.MelodicMinor.B
            
        case GWScale.Major.FSharp:
            
            self.natural_minor_scale = GWScale.NaturalMinor.FSharp
            self.harmonic_minor_scale = GWScale.HarmonicMinor.FSharp
            self.melodic_minor_scale = GWScale.MelodicMinor.FSharp
            
        case GWScale.Major.CSharp:
            
            self.natural_minor_scale = GWScale.NaturalMinor.CSharp
            self.harmonic_minor_scale = GWScale.HarmonicMinor.CSharp
            self.melodic_minor_scale = GWScale.MelodicMinor.CSharp
            
        case GWScale.Major.F:
            
            self.natural_minor_scale = GWScale.NaturalMinor.F
            self.harmonic_minor_scale = GWScale.HarmonicMinor.F
            self.melodic_minor_scale = GWScale.MelodicMinor.F
            
        case GWScale.Major.BFlat:
            
            self.natural_minor_scale = GWScale.NaturalMinor.BFlat
            self.harmonic_minor_scale = GWScale.HarmonicMinor.BFlat
            self.melodic_minor_scale = GWScale.MelodicMinor.BFlat
            
        case GWScale.Major.EFlat:
            
            self.natural_minor_scale = GWScale.NaturalMinor.EFlat
            self.harmonic_minor_scale = GWScale.HarmonicMinor.EFlat
            self.melodic_minor_scale = GWScale.MelodicMinor.EFlat
            
        case GWScale.Major.AFlat:
            
            self.natural_minor_scale = GWScale.NaturalMinor.AFlat
            self.harmonic_minor_scale = GWScale.HarmonicMinor.AFlat
            self.melodic_minor_scale = GWScale.MelodicMinor.AFlat
            
        }
        
    }
    
}
