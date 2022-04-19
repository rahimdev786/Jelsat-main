//
//  NetworkManager.swift
//  JelsatApp
//
//  Created by rahim on 13/03/2022.
// Routes.routes_en_version+Subroutes.user_token

import Foundation

class NetworkManager{
    static let shared:NetworkManager = NetworkManager()
    private init(){}
    
    func loginUserToken(urlString:String,completionHandler:@escaping (Result<String,NetworkError>)-> Void){
        guard let url = URL(string:urlString) else {
            completionHandler(.failure(.URLNotCorrect))
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HttpMethods.POST.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: urlRequest) { data, responce, error in
            if error != nil{
                completionHandler(.failure(.URLNotCorrect))
            }
            
            guard let responce = responce as? HTTPURLResponse else {
                completionHandler(.failure(.DataNotRespond))
                return
            }
            
            guard (200...299).contains(responce.statusCode) else {
                completionHandler(.failure(.HttpResponceCode(responce.statusCode)))
                return
            }
            
            guard let data = data else {
                completionHandler(.failure(.DataNotGet))
                return
            }
            do {
                let data1 =   try JSONSerialization.data(withJSONObject: data, options: []) as! String
                completionHandler(.success(data1))
            } catch  {
                completionHandler(.failure(.ResponceError))
            }
            
        }.resume()
    }
}
