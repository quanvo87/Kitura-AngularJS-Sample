/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import Kitura
import SwiftyJSON

let router = Router()

//
//	Allow for serving up static files found in the public directory
//
router.all("/", middleware: StaticFileServer(path: "./public"))

//
//	Timestamps
//
//	Add REST endpoints for getting, setting and clearing timestamps in an array in memory
//
var timestamps = [String]()

router.get("/timestamps") {
    request, response, next in
    response.send(json: JSON(timestamps))
    next()
}

router.post("/timestamps") {
    request, response, next in
    
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .long
    
    var dateStr = formatter.string(from: Date())
    timestamps.append(dateStr)
    
    response.status(.OK)
    next()
}

router.delete("/timestamps") {
    request, response, next in
    
    timestamps = []
    
    response.status(.OK)
    next()
}

//
// Read environment variables and look for port we should listen on
//
let envVars = ProcessInfo.processInfo.environment
let portString: String = envVars["PORT"] ?? envVars["CF_INSTANCE_PORT"] ??  envVars["VCAP_APP_PORT"] ?? "8090"
let port = Int(portString) ?? 8090

Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
