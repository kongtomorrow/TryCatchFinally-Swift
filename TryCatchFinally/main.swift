import Foundation

/* Swift doesn't support try/catch/finally constructs or exception throwing… OR DOES IT?

Warning: This is a hack for fun and evil. Resist the temptation to use it.

*/

println("try/catch form")
try {
    println("  try")
}.catch { e in
    println("  catch")
}

println("try/finally form")

try {
    println("  try")
}.finally {
    println("  finally")
}

println("try/catch/finally form")

try {
    println("  try")
}.catch { e in
    println("  catch")
}.finally {
    println("  finally")
}

println("try/catch/finally with an exception in try")

try {
    println("  try")
    NSArray().objectAtIndex(1)
}.catch { e in
    println("  caught \(e)")
}.finally {
    println("  finally")
}



