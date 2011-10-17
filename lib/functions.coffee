# Require and export all the available functions
# See individual functions for more info.
availableFunctions = 'ABS CEIL CONCAT FLOOR IF LENGTH LOG LOWER NUMBER ROUND STRING SUBSTR UPPER UNESCAPE'.split(' ')
functions = {}
for f in availableFunctions
  functions[f] = require("./functions/#{f.toLowerCase()}").fn

# fetch a function by name
exports.get = (functionName) ->
  f = functions[functionName]
  throw(new Error("UNKNOWN FUNCTION: #{functionName}")) unless f
  f
