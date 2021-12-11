//
//  GWMinorScaleProtocol.swift
//  GhostWriter
//
//  Created by Taro Kimura on 2021/12/11.
//

import Foundation

protocol GWMinorScaleProtocol {
    
    var natural_minor_scale : GWScale.NaturalMinor { get }
    var harmonic_minor_scale : GWScale.HarmonicMinor { get }
    var melodic_minor_scale : GWScale.MelodicMinor { get }
    
}
