//
//  Notes.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

class Notes : NotesProtocol {
    
    public static func from(_ scale : Scale.Major) -> [String] {
        
        switch scale {
            
        case Scale.Major.Cmajor:
            return ["C","D","E","F","G","A","B"]
        case Scale.Major.CSharpMajor:
            return ["C#","D#","F","F#","G#","A#","C"]
        case Scale.Major.Dmajor:
            return ["D","E","F#","G","A","B","C#"]
        case Scale.Major.EFlatMajor:
            return ["E♭","F","G","A♭","B♭","C","D"]
        case Scale.Major.Emajor:
            return ["E","F#","G#","A","B","C#","D#"]
        case Scale.Major.Fmajor:
            return ["F","G","A","B♭","C","D","E"]
        case Scale.Major.FSharpMajor:
            return ["F#","G#","A#","B","C#","D#","F"]
        case Scale.Major.Gmajor:
            return ["G","A","B","C","D","E","F#"]
        case Scale.Major.AFlatMajor:
            return ["A♭","B♭","C","D♭","E♭","F","G"]
        case Scale.Major.Amajor:
            return ["A","B","C#","D","E","F#","G#"]
        case Scale.Major.BFlatMajor:
            return ["B♭","C","D","E♭","F","G","A"]
        case Scale.Major.Bmajor:
            return ["B","C#","D#","E","F#","G#","A#"]
            
        }
            
    }
    
    public static func from(_ scale : Scale.NaturalMinor) -> [String] {
        return []
    }
    
    public static func from(_ scale : Scale.HarmonicMinor) -> [String] {
        return []
    }
    
    public static func from(_ scale : Scale.MelodicMinor) -> [String] {
        return []
    }
    
}
