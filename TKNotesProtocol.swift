//
//  NotesProtocol.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

protocol TKNotesProtocol {
    static func from(_ scale : TKScale.Major) -> [String]
    static func from(_ scale : TKScale.NaturalMinor) -> [String]
    static func from(_ scale : TKScale.HarmonicMinor) -> [String]
    static func from(_ scale : TKScale.MelodicMinor) -> [String]
}
