import XCTest
import Coordinator

class Tests: XCTestCase {
    
    class CoordinatorA: ChildCoordinatable {
        var childCoordinators: [Coordinatable] = []
    }
    
    class CoordinatorB: Coordinatable {
        func start() {
            print("MockB started")
        }
    }
    
    func test_child_coordinator_added() {
        let coordinatorA = CoordinatorA()
        let coordinatorB = CoordinatorB()
        coordinatorA.add(child: coordinatorB)
        
        XCTAssertTrue(!coordinatorA.childCoordinators.isEmpty)
    }
    
    func test_child_coordinator_removed() {
        let coordinatorA = CoordinatorA()
        let coordinatorB = CoordinatorB()
        coordinatorA.add(child: coordinatorB)
        coordinatorA.remove(child: coordinatorB)
        
        XCTAssertTrue(coordinatorA.childCoordinators.isEmpty)
    }
    
    func test_remove_all_child_coordinator() {
        let coordinatorA = CoordinatorA()
        let children = [CoordinatorB(), CoordinatorB(), CoordinatorB(), CoordinatorB(), CoordinatorB(), CoordinatorB()]
        
        children.forEach { coordinatorA.add(child: $0) }
        
        coordinatorA.removeAll()
        
        XCTAssertTrue(coordinatorA.childCoordinators.isEmpty)
        
    }
    
}
