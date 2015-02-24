// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func getDateTimeByTimeSpanType() -> NSDate {
    

    
    var date = NSDate()
    let calendar = NSCalendar.currentCalendar()
    let comps = NSDateComponents()
    
//    case .Week:
        comps.month = -1
        date = calendar.dateByAddingComponents(comps, toDate: NSDate(), options: NSCalendarOptions.allZeros)!
//        break
    
//    case .Month:
//        comps.month = -1
//        date = calendar.dateByAddingComponents(comps, toDate: NSDate(), options: NSCalendarOptions.allZeros)!
//        break
//        
//    case .Year:
//        comps.year = -1
//        date = calendar.dateByAddingComponents(comps, toDate: NSDate(), options: NSCalendarOptions.allZeros)!
//        break
//        
//    default:
//        break
//    }
    

    
    return date
}

getDateTimeByTimeSpanType()


class Work {
    var time = NSDate()
    init(time: NSDate) {
        self.time = time
    }
}

var list = [Work]()
let todayComponents = NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitYear, fromDate: NSDate())
for _ in 0...150 {
    todayComponents.day -= 1
    let newDate = NSCalendar.currentCalendar().dateFromComponents(todayComponents)!

    list.insert(Work(time: newDate), atIndex: 0)
}
list
//
//let result = list.filter { $0.time.compare(dateFormatter.dateFromString("2015-02-16 20:13:14")!) != NSComparisonResult.OrderedAscending }
//
//result
//
//let cal = NSCalendar.currentCalendar
//
//let date = dateFormatter.dateFromString("2015-03-16 20:13:14")!
// let result1 = NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitYear, fromDate: date)
//
//
//
//result1.month
//result1.year



//var components = NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitWeekOfMonth | NSCalendarUnit.CalendarUnitWeekday | NSCalendarUnit.CalendarUnitDay, fromDate: NSDate())

//let year = components.year
//let month = components.month
//let day = components.day


//// The first day of this week
//components.day = components.day - components.weekday + 1
//var resultDate = NSCalendar.currentCalendar().dateFromComponents(components)
//
//// The first day of last week
////components.day = (components.day - components.weekday + 1) - 7
//components.day = components.day - 7
//resultDate = NSCalendar.currentCalendar().dateFromComponents(components)
//
//// The first day of this month
//components.day = 1
//resultDate = NSCalendar.currentCalendar().dateFromComponents(components)
//
//// The first day of last month
//components.month = components.month - 1
//components.day = 1
//resultDate = NSCalendar.currentCalendar().dateFromComponents(components)


// week
//components.day -= 3 // ok
//
//var startDate = NSCalendar.currentCalendar().dateFromComponents(components)!
//var currentUnitResult = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending }
//
//// month
////components.day -= 30 // ok
//
////startDate = NSCalendar.currentCalendar().dateFromComponents(components)!
////currentUnitResult = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending }
//
//// year
//// components.day -= (30 * 4) // ok
//
////startDate = NSCalendar.currentCalendar().dateFromComponents(components)!
////currentUnitResult = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending }
//
//components = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | .CalendarUnitDay, fromDate: NSDate())
//
//components.day
//// The first day of this week
//components.day = components.day - components.weekday + 1
//components.day


// week -> day day day
//components.day -= 0
// month -> week week week
//components.day = components.day - components.weekday + 1

//components.day -= 7
//var currentUnitDate = NSCalendar.currentCalendar().dateFromComponents(components)!
// year -> month month month month



//var result = list.filter { $0.time.compare(currentUnitDate) != NSComparisonResult.OrderedAscending }


let startComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | .CalendarUnitDay, fromDate: NSDate())

let endComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | .CalendarUnitDay, fromDate: NSDate())

//endComponents.day += 1
//for _ in 0...3 {
//   
//    
//    startComponents.day = startComponents.day - 1
//    endComponents.day = endComponents.day - 1
//    
//    println(startComponents.day)
//    println(endComponents.day)
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)
//    println(startDate)
//    println(endDate)
//    
//    let result = list.filter { $0.time.compare(startDate!) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate!) != NSComparisonResult.OrderedDescending }
//
//    result
//    
//}


//startComponents.day = startComponents.day - startComponents.weekday + 1 + 7
//endComponents.day = endComponents.day - endComponents.weekday + 7 + 7 + 1
//
//println(startComponents.day)
//println(endComponents.day)
//
//for _ in 0...3 {
//    startComponents.day = startComponents.day - (1 * 7)
//    endComponents.day = endComponents.day - (1 * 7)
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)
//   
//    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate!) != NSComparisonResult.OrderedDescending }
//    
//    result
//}


//startComponents.day = 1
////endComponents.day = endComponents.month - 1
//
//println("start: month:\(startComponents.month) day:\(startComponents.day)")
//println("end  : month:\(endComponents.month) day:\(endComponents.day)")

//for i in 0...3 {
//    startComponents.month = startComponents.month - i == 0 ? 0 : 1
//    endComponents.month = startComponents.month
//    
//    println("start: month:\(startComponents.month) day:\(startComponents.day)")
//    println("end  : month:\(endComponents.month) day:\(endComponents.day)")
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)
//
//    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate!) != NSComparisonResult.OrderedDescending }
//
//    result
//}

startComponents.day = 1
endComponents.day = 0


for i in 0...3 {
//let i = 0
startComponents.month = startComponents.month - (i == 0 ? 0 : 1)
endComponents.month = startComponents.month + 1


println("start: month:\(startComponents.month) day:\(startComponents.day)")
println("end  : month:\(endComponents.month) day:\(endComponents.day)")

let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)!
    
    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }

result
}
