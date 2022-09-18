var emptyDict: [String: String] = [:] //create a dictionary with no key values pairs
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]

print("The status message of 200 is \(responseMessages[200]!)")