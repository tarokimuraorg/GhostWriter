//
//  Notes.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

class GWNotes : GWNotesProtocol {
    
    public static func from(_ scale : GWScale.Major) -> [String] {
        
        switch scale {
            
        case GWScale.Major.C:
            return ["C","D","E","F","G","A","B"]
        case GWScale.Major.CSharp:
            return ["C#","D#","F","F#","G#","A#","C"]
        case GWScale.Major.D:
            return ["D","E","F#","G","A","B","C#"]
        case GWScale.Major.EFlat:
            return ["E♭","F","G","A♭","B♭","C","D"]
        case GWScale.Major.E:
            return ["E","F#","G#","A","B","C#","D#"]
        case GWScale.Major.F:
            return ["F","G","A","B♭","C","D","E"]
        case GWScale.Major.FSharp:
            return ["F#","G#","A#","B","C#","D#","F"]
        case GWScale.Major.G:
            return ["G","A","B","C","D","E","F#"]
        case GWScale.Major.AFlat:
            return ["A♭","B♭","C","D♭","E♭","F","G"]
        case GWScale.Major.A:
            return ["A","B","C#","D","E","F#","G#"]
        case GWScale.Major.BFlat:
            return ["B♭","C","D","E♭","F","G","A"]
        case GWScale.Major.B:
            return ["B","C#","D#","E","F#","G#","A#"]
            
        }
            
    }
    
    public static func from(_ scale : GWScale.NaturalMinor) -> [String] {
        
        switch scale {
            
        case GWScale.NaturalMinor.C:
            return ["C","D","E♭","F","G","A♭","B♭"]
        case GWScale.NaturalMinor.CSharp:
            return ["C#","D#","E","F#","G#","A","B"]
        case GWScale.NaturalMinor.D:
            return ["D","E","F","G","A","B♭","C"]
        case GWScale.NaturalMinor.EFlat:
            return ["E♭","F","G♭","A♭","B♭","B","D♭"]
        case GWScale.NaturalMinor.E:
            return ["E","F#","G","A","B","C","D"]
        case GWScale.NaturalMinor.F:
            return ["F","G","A♭","B♭","C","D♭","E♭"]
        case GWScale.NaturalMinor.FSharp:
            return ["F#","G#","A","B","C#","D","E"]
        case GWScale.NaturalMinor.G:
            return ["G","A","B♭","C","D","E♭","F"]
        case GWScale.NaturalMinor.AFlat:
            return ["A♭","B♭","B","D♭","E♭","E","G♭"]
        case GWScale.NaturalMinor.A:
            return ["A","B","C","D","E","F","G"]
        case GWScale.NaturalMinor.BFlat:
            return ["B♭","C","D♭","E♭","F","G♭","A♭"]
        case GWScale.NaturalMinor.B:
            return ["B","C#","D","E","F#","G","A"]
        
        }
        
    }
    
    public static func from(_ scale : GWScale.HarmonicMinor) -> [String] {
        
        switch scale {
            
        case GWScale.HarmonicMinor.C:
            return ["C","D","E♭","F","G","A♭","B"]
        case GWScale.HarmonicMinor.CSharp:
            return ["C#","D#","E","F#","G#","A","C"]
        case GWScale.HarmonicMinor.D:
            return ["D","E","F","G","A","B♭","C#"]
        case GWScale.HarmonicMinor.EFlat:
            return ["E♭","F","G♭","A♭","B♭","B","D"]
        case GWScale.HarmonicMinor.E:
            return ["E","F#","G","A","B","C","D#"]
        case GWScale.HarmonicMinor.F:
            return ["F","G","A♭","B♭","C","D♭","E"]
        case GWScale.HarmonicMinor.FSharp:
            return ["F#","G#","A","B","C#","D","F"]
        case GWScale.HarmonicMinor.G:
            return ["G","A","B♭","C","D","E♭","F#"]
        case GWScale.HarmonicMinor.AFlat:
            return ["A♭","B♭","B","D♭","E♭","E","G"]
        case GWScale.HarmonicMinor.A:
            return ["A","B","C","D","E","F","G#"]
        case GWScale.HarmonicMinor.BFlat:
            return ["B♭","C","D♭","E♭","F","G♭","A"]
        case GWScale.HarmonicMinor.B:
            return ["B","C#","D","E","F#","G","A#"]
            
        }
        
    }
    
    public static func from(_ scale : GWScale.MelodicMinor) -> [String] {
        
        switch scale {
            
        case GWScale.MelodicMinor.C:
            return ["C","D","E♭","F","G","A","B"]
        case GWScale.MelodicMinor.CSharp:
            return ["C#","D#","E","F#","G#","A#","C"]
        case GWScale.MelodicMinor.D:
            return ["D","E","F","G","A","B","C#"]
        case GWScale.MelodicMinor.EFlat:
            return ["E♭","F","G♭","A♭","B♭","C","D"]
        case GWScale.MelodicMinor.E:
            return ["E","F#","G","A","B","C#","D#"]
        case GWScale.MelodicMinor.F:
            return ["F","G","A♭","B♭","C","D","E"]
        case GWScale.MelodicMinor.FSharp:
            return ["F#","G#","A","B","C#","D#","F"]
        case GWScale.MelodicMinor.G:
            return ["G","A","B♭","C","D","E","F#"]
        case GWScale.MelodicMinor.AFlat:
            return ["A♭","B♭","B","D♭","E♭","F","G"]
        case GWScale.MelodicMinor.A:
            return ["A","B","C","D","E","F#","G#"]
        case GWScale.MelodicMinor.BFlat:
            return ["B♭","C","D♭","E♭","F","G","A"]
        case GWScale.MelodicMinor.B:
            return ["B","C#","D","E","F#","G#","A#"]
            
        }
        
    }
    
}
