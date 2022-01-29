//
//  NotesProtocol.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

protocol GWNotesProtocol {
    
    static func of(_ scale : GWScale.Major) -> [String]
    static func of(_ scale : GWScale.NaturalMinor) -> [String]
    static func of(_ scale : GWScale.HarmonicMinor) -> [String]
    static func of(_ scale : GWScale.MelodicMinor) -> [String]
    
}
