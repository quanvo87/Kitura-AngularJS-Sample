# 🚫 This project is no longer maintained.

# Kitura AngularJS Sample

![Timestamp Screenshot](https://github.com/IBM-Swift/Kitura-AngularJS-Sample/raw/master/docs/timestamps.png)

## Summary

This project demonstrates a very simple web application based on Kitura that integrates with an AngularJS client application. It communicates with a Kitura backend and displays the data in a browser-based user interface.

This application example allows users to set and get previous timestamps that have been stored in the past. The service routes are defined in `main.swift` on the server and can be consumed by any client—iOS or Android applications, web client, etc. In the case of this sample, the timestamp services are consumed via REST calls made from an AngularJS client service.

## Clone, build and run the project



- Clone the repository

	```
	$ git clone https://github.com/IBM-Swift/Kitura-AngularJS-Sample.git
	```
	
- Build the application:

	```
	$ cd Kitura-AngularJS-Sample
	$ swift build
	```
	
- Run the built executable:

	```
	$ ./build/debug/Kitura-AngularJS-Sample
	```
	
- Open a browser pointing at `http://localhost:8090` </li>

## Work with Xcode

- Install [Xcode 8](https://developer.apple.com/download/) from Apple
- Generate the Xcode project:

	```
	swift package generate-xcodeproj
	```

- Open the project in Xcode:

	```
	open ./Kitura-AngularJS-Sample.xcodeproj
	```

- Compile, run, and debug as normal

	Be sure to change your active target to the Kitura-AngularJS-Sample first
	
## Deploy to Bluemix

- Push to Cloud Foundry

	```
	cf push
	```
	
## License

Copyright 2016 IBM

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
