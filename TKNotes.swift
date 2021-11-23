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
            
        case TKScale.Major.Cmajor:
            return ["C","D","E","F","G","A","B"]
        case TKScale.Major.CSharpMajor:
            return ["C#","D#","F","F#","G#","A#","C"]
        case TKScale.Major.Dmajor:
            return ["D","E","F#","G","A","B","C#"]
        case TKScale.Major.EFlatMajor:
            return ["E♭","F","G","A♭","B♭","C","D"]
        case TKScale.Major.Emajor:
            return ["E","F#","G#","A","B","C#","D#"]
        case TKScale.Major.Fmajor:
            return ["F","G","A","B♭","C","D","E"]
        case TKScale.Major.FSharpMajor:
            return ["F#","G#","A#","B","C#","D#","F"]
        case TKScale.Major.Gmajor:
            return ["G","A","B","C","D","E","F#"]
        case TKScale.Major.AFlatMajor:
            return ["A♭","B♭","C","D♭","E♭","F","G"]
        case TKScale.Major.Amajor:
            return ["A","B","C#","D","E","F#","G#"]
        case TKScale.Major.BFlatMajor:
            return ["B♭","C","D","E♭","F","G","A"]
        case TKScale.Major.Bmajor:
            return ["B","C#","D#","E","F#","G#","A#"]
            
        }
            
    }
    
    public static func from(_ scale : TKScale.NaturalMinor) -> [String] {
        
        switch scale {
            
        case TKScale.NaturalMinor.Cminor:
            return ["C","D","E♭","F","G","A♭","B♭"]
        case TKScale.NaturalMinor.CSharpMinor:
            return ["C#","D#","E","F#","G#","A","B"]
        case TKScale.NaturalMinor.Dminor:
            return ["D","E","F","G","A","B♭","C"]
        case TKScale.NaturalMinor.EFlatMinor:
            return ["E♭","F","G♭","A♭","B♭","B","D♭"]
        case TKScale.NaturalMinor.Eminor:
            return ["E","F#","G","A","B","C","D"]
        case TKScale.NaturalMinor.Fminor:
            return ["F","G","A♭","B♭","C","D♭","E♭"]
        case TKScale.NaturalMinor.FSharpMinor:
            return ["F#","G#","A","B","C#","D","E"]
        case TKScale.NaturalMinor.Gminor:
            return ["G","A","B♭","C","D","E♭","F"]
        case TKScale.NaturalMinor.AFlatMinor:
            return ["A♭","B♭","B","D♭","E♭","E","G♭"]
        case TKScale.NaturalMinor.Aminor:
            return ["A","B","C","D","E","F","G"]
        case TKScale.NaturalMinor.BFlatMinor:
            return ["B♭","C","D♭","E♭","F","G♭","A♭"]
        case TKScale.NaturalMinor.Bminor:
            return ["B","C#","D","E","F#","G","A"]
        
        }
        
    }
    
    public static func from(_ scale : TKScale.HarmonicMinor) -> [String] {
        
        switch scale {
            
        case TKScale.HarmonicMinor.Cminor:
            return ["C","D","E♭","F","G","A♭","B"]
        case TKScale.HarmonicMinor.CSharpMinor:
            return ["C#","D#","E","F#","G#","A","C"]
        case TKScale.HarmonicMinor.Dminor:
            return ["D","E","F","G","A","B♭","C#"]
        case TKScale.HarmonicMinor.EFlatMinor:
            return ["E♭","F","G♭","A♭","B♭","B","D"]
        case TKScale.HarmonicMinor.Eminor:
            return ["E","F#","G","A","B","C","D#"]
        case TKScale.HarmonicMinor.Fminor:
            return ["F","G","A♭","B♭","C","D♭","E"]
        case TKScale.HarmonicMinor.FSharpMinor:
            return ["F#","G#","A","B","C#","D","F"]
        case TKScale.HarmonicMinor.Gminor:
            return ["G","A","B♭","C","D","E♭","F#"]
        case TKScale.HarmonicMinor.AFlatMinor:
            return ["A♭","B♭","B","D♭","E♭","E","G"]
        case TKScale.HarmonicMinor.Aminor:
            return ["A","B","C","D","E","F","G#"]
        case TKScale.HarmonicMinor.BFlatMinor:
            return ["B♭","C","D♭","E♭","F","G♭","A"]
        case TKScale.HarmonicMinor.Bminor:
            return ["B","C#","D","E","F#","G","A#"]
            
        }
        
    }
    
    public static func from(_ scale : TKScale.MelodicMinor) -> [String] {
        
        switch scale {
            
        case TKScale.MelodicMinor.Cminor:
            return ["C","D","E♭","F","G","A","B"]
        case TKScale.MelodicMinor.CSharpMinor:
            return ["C#","D#","E","F#","G#","A#","C"]
        case TKScale.MelodicMinor.Dminor:
            return ["D","E","F","G","A","B","C#"]
        case TKScale.MelodicMinor.EFlatMinor:
            return ["E♭","F","G♭","A♭","B♭","C","D"]
        case TKScale.MelodicMinor.Eminor:
            return ["E","F#","G","A","B","C#","D#"]
        case TKScale.MelodicMinor.Fminor:
            return ["F","G","A♭","B♭","C","D","E"]
        case TKScale.MelodicMinor.FSharpMinor:
            return ["F#","G#","A","B","C#","D#","F"]
        case TKScale.MelodicMinor.Gminor:
            return ["G","A","B♭","C","D","E","F#"]
        case TKScale.MelodicMinor.AFlatMinor:
            return ["A♭","B♭","B","D♭","E♭","F","G"]
        case TKScale.MelodicMinor.Aminor:
            return ["A","B","C","D","E","F#","G#"]
        case TKScale.MelodicMinor.BFlatMinor:
            return ["B♭","C","D♭","E♭","F","G","A"]
        case TKScale.MelodicMinor.Bminor:
            return ["B","C#","D","E","F#","G#","A#"]
            
        }
        
    }
    
}
