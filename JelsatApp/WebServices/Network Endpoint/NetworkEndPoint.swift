//
//  NetworkEndPoint.swift
//  JelsatApp
//
//  Created by rahim on 13/03/2022.
//https://dev.jelsat.com/api/en/v1/hostinbox
//https://dev.jelsat.com/api/ar/v1/changelanguage

import Foundation

enum HttpMethods:String {
case GET = "GET"
case POST = "POST"
case UPDATE = "UPDATE"
case DELETE = "DELETE"
}


class Subroutes{
    static public var user = "user"
    static public var user_token = "user/token"
    static public var hostinbox = "hostinbox"
    static public var changelanguage = "changelanguage"
}
