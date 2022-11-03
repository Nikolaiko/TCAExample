import Foundation

class MyRequestController {
    func sendRequest() async throws -> Characters{
        /* Configure session, choose between:
           * defaultSessionConfiguration
           * ephemeralSessionConfiguration
           * backgroundSessionConfigurationWithIdentifier:
         And set session-wide properties, such as: HTTPAdditionalHeaders,
         HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
         */
        let sessionConfig = URLSessionConfiguration.default

        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)

        /* Create the Request:
           Request (GET https://rickandmortyapi.com/api/character)
         */

        var url = URL(string: "https://rickandmortyapi.com/api/character")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        /* Start a new Task */
        let (data, response) = try await session.data(for: request)
        let statusCode = (response as! HTTPURLResponse).statusCode
        let characters = try JSONDecoder().decode(Characters.self, from: data)

        return characters
    }
}



