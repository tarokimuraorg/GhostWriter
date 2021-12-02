//
//  TKChords.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/27.
//

import Foundation

class TKChords : TKNotesProtocol {
    
    public static func from(_ scale : TKScale.Major) -> [String] {
        
        var chords : [String] = []
        let notes = TKNotes.from(scale)
        
        if (notes.count == 7) {
        
            chords.append(notes[0])
            chords.append(notes[1] + "m")
            chords.append(notes[2] + "m")
            chords.append(notes[3])
            chords.append(notes[4])
            chords.append(notes[5] + "m")
            chords.append(notes[6] + "m7-5")
            
        }
        
        return chords
        
    }
    
    public static func from(_ scale : TKScale.NaturalMinor) -> [String] {
        
        var chords : [String] = []
        let notes = TKNotes.from(scale)
        
        if (notes.count == 7) {
        
            chords.append(notes[0] + "m")
            chords.append(notes[1] + "m7-5")
            chords.append(notes[2])
            chords.append(notes[3] + "m")
            chords.append(notes[4] + "m")
            chords.append(notes[5])
            chords.append(notes[6])
            
        }
        
        return chords
        
    }
    
    public static func from(_ scale : TKScale.HarmonicMinor) -> [String] {
        
        var chords : [String] = []
        let notes = TKNotes.from(scale)
        
        if (notes.count == 7) {
        
            chords.append(notes[0] + "m")
            chords.append(notes[1] + "m7-5")
            chords.append(notes[2] + "aug")
            chords.append(notes[3] + "m")
            chords.append(notes[4])
            chords.append(notes[5])
            chords.append(notes[6] + "dim")
            
        }
        
        return chords
        
    }
    
    public static func from(_ scale : TKScale.MelodicMinor) -> [String] {
        
        var chords : [String] = []
        let notes = TKNotes.from(scale)
        
        if (notes.count == 7) {
        
            chords.append(notes[0] + "m")
            chords.append(notes[1] + "m")
            chords.append(notes[2] + "aug")
            chords.append(notes[3])
            chords.append(notes[4])
            chords.append(notes[5] + "m7-5")
            chords.append(notes[6] + "m7-5")
            
        }
        
        return chords
        
    }
    
}
