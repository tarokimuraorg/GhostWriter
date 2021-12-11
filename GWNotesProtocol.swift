//
//  NotesProtocol.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

protocol GWNotesProtocol {
    static func from(_ scale : GWScale.Major) -> [String]
    static func from(_ scale : GWScale.NaturalMinor) -> [String]
    static func from(_ scale : GWScale.HarmonicMinor) -> [String]
    static func from(_ scale : GWScale.MelodicMinor) -> [String]
}
