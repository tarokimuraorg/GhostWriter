//
//  GWChordsProtocol.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2022/01/03.
//

import Foundation

protocol GWChordsProtocol {
    
    static func of(_ scale : GWScale.Major) -> GWDegrees
    static func of(_ scale : GWScale.NaturalMinor) -> GWDegrees
    static func of(_ scale : GWScale.HarmonicMinor) -> GWDegrees
    static func of(_ scale : GWScale.MelodicMinor) -> GWDegrees
    
}
