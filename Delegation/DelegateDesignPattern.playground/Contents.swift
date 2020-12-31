
protocol CookCertification {
    func makeKoreanFood()
    func makeCzechFood()
}

protocol DeliveryCertification {
    func deliverFood(to: String)
}

struct Restaurant {
    
    class TaskDelegator {
        
        var cookDelegate: CookCertification?
        var deliveryDelegate: DeliveryCertification?
        
        func notifyCzechFoodOrder() {
            cookDelegate?.makeCzechFood()
        }
        
        func notifyKoreanFoodOrder() {
            cookDelegate?.makeKoreanFood()
        }
        
        func notifyDeliveryOrder(to destination: String) {
            deliveryDelegate?.deliverFood(to: destination)
        }
    }
    
    class Cook: CookCertification {
        
        init(taskDelegator: TaskDelegator) {
            taskDelegator.cookDelegate = self
        }
        
        func makeCzechFood() {
            print("I'm working on fried cheese...")
        }
        
        func makeKoreanFood() {
            print("I'm working on kimchi soup...")
        }
    }

    class Deliverer: DeliveryCertification {
        
        init(taskDelegator: TaskDelegator) {
            taskDelegator.deliveryDelegate = self
        }
        
        func deliverFood(to destination: String) {
            print("Food being delivered to \(destination)...")
        }
    }
}


let robert = Restaurant.TaskDelegator()

let michal = Restaurant.Cook(taskDelegator: robert)

let martin = Restaurant.Deliverer(taskDelegator: robert)

robert.notifyKoreanFoodOrder()
robert.notifyDeliveryOrder(to: "Prague 5")
