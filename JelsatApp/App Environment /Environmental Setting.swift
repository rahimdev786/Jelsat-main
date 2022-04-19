//
//  Environmental Setting.swift
//  JelsatApp
//
//  Created by rahim on 13/03/2022.
//https://dev.jelsat.com/api/en/v1/hostinbox
//https://dev.jelsat.com/api/ar/v1/changelanguage

import Foundation
enum AppLanguage{
    case en
    case ar
}
enum EnvironmentalManager{
    case dev
    case qa
    case staging
    case prod
}

class Routes{
    static public var routes_en_version = "https://\(EnvironmentalManager.dev).jelsat.com/api/en/v1/"
    
    static public var routes_ar_version = "https://\(EnvironmentalManager.dev).jelsat.com/api/ar/v1/"
}

