# TryCatchFinally-Swift
Swift doesn't support try/catch/finally constructs or exception throwing… OR DOES IT?

Warning: This is a hack for fun and evil. Resist the temptation to use it.

Q: Swift doesn't support try/catch/finally, but it's pretty flexible with respect to syntax, right? Can we hack it in? 

A: Kind of. Mostly.

This project enables the following constructs. 

```swift
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
```

which prints 

```
try/catch form
  try
try/finally form
  try
  finally
try/catch/finally form
  try
  finally
try/catch/finally with an exception in try
  try
  caught *** -[__NSArrayI objectAtIndex:]: index 1 beyond bounds for empty array
  finally
```

I'm not going to give away the trick here, in case folks want to puzzle it out.

