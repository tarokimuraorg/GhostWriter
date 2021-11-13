//
//  NotesProtocol.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/11/13.
//

import Foundation

protocol NotesProtocol {
    static func from(_ scale : Scale.Major) -> [String]
    static func from(_ scale : Scale.NaturalMinor) -> [String]
    static func from(_ scale : Scale.HarmonicMinor) -> [String]
    static func from(_ scale : Scale.MelodicMinor) -> [String]
}
