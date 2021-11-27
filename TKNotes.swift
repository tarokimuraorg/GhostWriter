//
//  Notes.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

class TKNotes : TKNotesProtocol {
    
    public static func from(_ scale : TKScale.Major) -> [String] {
        
        switch scale {
            
        case TKScale.Major.C:
            return ["C","D","E","F","G","A","B"]
        case TKScale.Major.CSharp:
            return ["C#","D#","F","F#","G#","A#","C"]
        case TKScale.Major.D:
            return ["D","E","F#","G","A","B","C#"]
        case TKScale.Major.EFlat:
            return ["E♭","F","G","A♭","B♭","C","D"]
        case TKScale.Major.E:
            return ["E","F#","G#","A","B","C#","D#"]
        case TKScale.Major.F:
            return ["F","G","A","B♭","C","D","E"]
        case TKScale.Major.FSharp:
            return ["F#","G#","A#","B","C#","D#","F"]
        case TKScale.Major.G:
            return ["G","A","B","C","D","E","F#"]
        case TKScale.Major.AFlat:
            return ["A♭","B♭","C","D♭","E♭","F","G"]
        case TKScale.Major.A:
            return ["A","B","C#","D","E","F#","G#"]
        case TKScale.Major.BFlat:
            return ["B♭","C","D","E♭","F","G","A"]
        case TKScale.Major.B:
            return ["B","C#","D#","E","F#","G#","A#"]
            
        }
            
    }
    
    public static func from(_ scale : TKScale.NaturalMinor) -> [String] {
        
        switch scale {
            
        case TKScale.NaturalMinor.C:
            return ["C","D","E♭","F","G","A♭","B♭"]
        case TKScale.NaturalMinor.CSharp:
            return ["C#","D#","E","F#","G#","A","B"]
        case TKScale.NaturalMinor.D:
            return ["D","E","F","G","A","B♭","C"]
        case TKScale.NaturalMinor.EFlat:
            return ["E♭","F","G♭","A♭","B♭","B","D♭"]
        case TKScale.NaturalMinor.E:
            return ["E","F#","G","A","B","C","D"]
        case TKScale.NaturalMinor.F:
            return ["F","G","A♭","B♭","C","D♭","E♭"]
        case TKScale.NaturalMinor.FSharp:
            return ["F#","G#","A","B","C#","D","E"]
        case TKScale.NaturalMinor.G:
            return ["G","A","B♭","C","D","E♭","F"]
        case TKScale.NaturalMinor.AFlat:
            return ["A♭","B♭","B","D♭","E♭","E","G♭"]
        case TKScale.NaturalMinor.A:
            return ["A","B","C","D","E","F","G"]
        case TKScale.NaturalMinor.BFlat:
            return ["B♭","C","D♭","E♭","F","G♭","A♭"]
        case TKScale.NaturalMinor.B:
            return ["B","C#","D","E","F#","G","A"]
        
        }
        
    }
    
    public static func from(_ scale : TKScale.HarmonicMinor) -> [String] {
        
        switch scale {
            
        case TKScale.HarmonicMinor.C:
            return ["C","D","E♭","F","G","A♭","B"]
        case TKScale.HarmonicMinor.CSharp:
            return ["C#","D#","E","F#","G#","A","C"]
        case TKScale.HarmonicMinor.D:
            return ["D","E","F","G","A","B♭","C#"]
        case TKScale.HarmonicMinor.EFlat:
            return ["E♭","F","G♭","A♭","B♭","B","D"]
        case TKScale.HarmonicMinor.E:
            return ["E","F#","G","A","B","C","D#"]
        case TKScale.HarmonicMinor.F:
            return ["F","G","A♭","B♭","C","D♭","E"]
        case TKScale.HarmonicMinor.FSharp:
            return ["F#","G#","A","B","C#","D","F"]
        case TKScale.HarmonicMinor.G:
            return ["G","A","B♭","C","D","E♭","F#"]
        case TKScale.HarmonicMinor.AFlat:
            return ["A♭","B♭","B","D♭","E♭","E","G"]
        case TKScale.HarmonicMinor.A:
            return ["A","B","C","D","E","F","G#"]
        case TKScale.HarmonicMinor.BFlat:
            return ["B♭","C","D♭","E♭","F","G♭","A"]
        case TKScale.HarmonicMinor.B:
            return ["B","C#","D","E","F#","G","A#"]
            
        }
        
    }
    
    public static func from(_ scale : TKScale.MelodicMinor) -> [String] {
        
        switch scale {
            
        case TKScale.MelodicMinor.C:
            return ["C","D","E♭","F","G","A","B"]
        case TKScale.MelodicMinor.CSharp:
            return ["C#","D#","E","F#","G#","A#","C"]
        case TKScale.MelodicMinor.D:
            return ["D","E","F","G","A","B","C#"]
        case TKScale.MelodicMinor.EFlat:
            return ["E♭","F","G♭","A♭","B♭","C","D"]
        case TKScale.MelodicMinor.E:
            return ["E","F#","G","A","B","C#","D#"]
        case TKScale.MelodicMinor.F:
            return ["F","G","A♭","B♭","C","D","E"]
        case TKScale.MelodicMinor.FSharp:
            return ["F#","G#","A","B","C#","D#","F"]
        case TKScale.MelodicMinor.G:
            return ["G","A","B♭","C","D","E","F#"]
        case TKScale.MelodicMinor.AFlat:
            return ["A♭","B♭","B","D♭","E♭","F","G"]
        case TKScale.MelodicMinor.A:
            return ["A","B","C","D","E","F#","G#"]
        case TKScale.MelodicMinor.BFlat:
            return ["B♭","C","D♭","E♭","F","G","A"]
        case TKScale.MelodicMinor.B:
            return ["B","C#","D","E","F#","G#","A#"]
            
        }
        
    }
    
}
