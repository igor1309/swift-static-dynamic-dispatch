import Benchmark
import Foundation

///     ```ch
///     $ swift run -c release swift-static-dynamic-dispatch
///     ```

protocol Testable {}

struct TestingUnit: Testable {
    
    let id: UUID = UUID()
}

let item = TestingUnit()

let staticDispatch = BenchmarkSuite(name: "StaticDispatch") { suite in
    
    suite.benchmark("StaticDispatch") {
        
        var array = [TestingUnit]()
        
        for _ in 0..<1_000 {
            array.append(item)
        }
    }
}

let dynamicDispatch = BenchmarkSuite(name: "dynamicDispatch") { suite in
    
    suite.benchmark("dynamicDispatch") {
        
        var array = [Testable]()
        
        for _ in 0..<1_000 {
            array.append(item)
        }
    }
}

Benchmark.main([
    staticDispatch,
    dynamicDispatch
])
