//
//  GWChords.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/27.
//

import Foundation

class GWChords : GWChordsProtocol {
    
    public static func from(_ scale : GWScale.Major) -> GWDegrees {
        
        let notes = GWNotes.from(scale)
        
        return GWDegrees(I: notes[0], II: notes[1] + "m", III: notes[2] + "m", IV: notes[3], V: notes[4], VI: notes[5] + "m", VII: notes[6] + "m7-5")
        
    }
    
    public static func from(_ scale : GWScale.NaturalMinor) -> GWDegrees {

        let notes = GWNotes.from(scale)
        
        return GWDegrees(I: notes[0] + "m", II: notes[1] + "m7-5", III: notes[2], IV: notes[3] + "m", V: notes[4] + "m", VI: notes[5], VII: notes[6])
        
    }
    
    public static func from(_ scale : GWScale.HarmonicMinor) -> GWDegrees{
        
        let notes = GWNotes.from(scale)
        
        return GWDegrees(I: notes[0] + "m", II: notes[1] + "m7-5", III: notes[2] + "aug", IV: notes[3] + "m", V: notes[4], VI: notes[5], VII: notes[6] + "dim")
        
    }
    
    public static func from(_ scale : GWScale.MelodicMinor) -> GWDegrees {
        
        let notes = GWNotes.from(scale)
        
        return GWDegrees(I: notes[0] + "m", II: notes[1] + "m", III: notes[2] + "aug", IV: notes[3], V: notes[4], VI: notes[5] + "m7-5", VII: notes[6] + "m7-5")
        
    }
    
}
