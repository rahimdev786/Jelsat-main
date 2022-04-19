//
//  NetWorkError.swift
//  JelsatApp
//
//  Created by rahim on 13/03/2022.
//

import Foundation

enum NetworkError:Error {
    case URLNotCorrect
    case DataNotRespond
    case HttpResponceCode (Int)
    case ResponceError
    case ContactSupport
    case DataNotGet
}


extension NetworkError:LocalizedError{
    var network:String{
        switch self {
        case .URLNotCorrect:
            return "Return URL Not Connected Http Responce Error"
        case .DataNotRespond:
            return "Data Retrive Error"
        case .HttpResponceCode(let code):
            return "Http Responce Code error \(code)"
        case .ResponceError:
            return "Responce Error While Connect"
        case .ContactSupport:
            return "Please Contact Support Team & Thanks You"
        case .DataNotGet:
            return "Data not get From Server"
        }
    }
}
