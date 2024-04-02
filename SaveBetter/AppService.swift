//
//  AppService.swift
//  SaveBetter
//
//  Created by Karner David on 4/2/24.
//

import Appwrite

class AppService {
    func main() {
        let client = Client()
            .setEndpoint("https://cloud.appwrite.io/v1") // Your API Endpoint
            .setProject("660c535e63415b6c2296") // Your project ID
            .setSelfSigned(true) // Use only on dev mode with a self-signed SSL cert
    }
}
