// Playground - noun: a place where people can play

import UIKit

/*
var str = "Hello, playground"

enum Type {
    case Week, Month, Year
}

var selectedType = Type.Week

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
let todayComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond, fromDate: NSDate())

list.insert(Work(time: NSDate()), atIndex: 0)

for _ in 0...250 {
    todayComponents.day -= 1
    //todayComponents.hour -= 1
    //todayComponents.minute -= 1
    let newDate = NSCalendar.currentCalendar().dateFromComponents(todayComponents)!

    list.insert(Work(time: newDate), atIndex: 0)
}
list

//NSThread.sleepForTimeInterval(10)
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


func getListByType(type: Type) -> Array<Work>{
    var works = [Work]()
    
    let startComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond , fromDate: NSDate())
    
    let endComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond , fromDate: NSDate())
    
    startComponents.hour = 0
    startComponents.minute = 0
    startComponents.second = 1
    endComponents.hour = 23
    endComponents.minute = 59
    startComponents.second = 59
    
    switch type {
    case .Week:
        
        for i in 0...3 {
            startComponents.day = startComponents.day - (i == 0 ? 0 : 1)
            endComponents.day = startComponents.day
        
            let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
            let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)!
        
            //var result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }
             var result = filterWorksByStartDate(startDate, andEndDate: endDate)!
            result
        }
        
        break
        
    case .Month:
        // ok
        startComponents.day = startComponents.day - startComponents.weekday + 1
        
        for i in 0...3 {
            startComponents.day = startComponents.day - ((i == 0 ? 0 : 1) * 7)
            endComponents.day = startComponents.day + 6
        
            let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
            let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)!
        
//            var result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }
             let result = filterWorksByStartDate(startDate, andEndDate: endDate)!
            result
        }
        break
        
    case .Year:
        
        startComponents.day = 1
        endComponents.day = 0
        
        for i in 0...3 {
            startComponents.month = startComponents.month - (i == 0 ? 0 : 1)
            endComponents.month = startComponents.month + 1
            
            
            let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
            let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)!
            
            //var result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }
             let result = filterWorksByStartDate(startDate, andEndDate: endDate)!
            result
        }
        
        break
    }
    
    return works
}

func filterWorksByStartDate(startDate: NSDate, andEndDate endDate: NSDate) -> Array<Work>? {
    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }
    result
    return result
}

getListByType(Type.Year)

/*
let startComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond , fromDate: NSDate())

let endComponents = NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitWeekOfMonth | .CalendarUnitWeekday | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond , fromDate: NSDate())

startComponents.hour = 0
startComponents.minute = 0
startComponents.second = 1
endComponents.hour = 23
endComponents.minute = 59
startComponents.second = 59

*/
//startComponents.day += 0
//endComponents.day += 0
//for i in 0...3 {
//   
//    
//    startComponents.day = startComponents.day - (i == 0 ? 0 : 1)
//    endComponents.day = startComponents.day
//
//
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)
//    startDate
//    endDate
//    
//    let result = list.filter { $0.time.compare(startDate!) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate!) != NSComparisonResult.OrderedDescending }
//    result
//    
//}



//startComponents.day = startComponents.day - startComponents.weekday + 1// + 7
//endComponents.day = endComponents.day - endComponents.weekday + 7 //+ 7


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

//startComponents.day = startComponents.day - startComponents.weekday + 1// + 7
//endComponents.day = endComponents.day - endComponents.weekday + 7 //+ 7

//for i in 0...3 {
//    startComponents.day = startComponents.day - ((i == 0 ? 0 : 1) * 7)
//    endComponents.day = endComponents.day -     ((i == 0 ? 0 : 1) * 7)
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)
//    
//    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate!) != NSComparisonResult.OrderedDescending }
//    
//    result
//}


// ok
//startComponents.day = startComponents.day - startComponents.weekday + 1
//
//for i in 0...3 {
//    startComponents.day = startComponents.day - ((i == 0 ? 0 : 1) * 7)
//    endComponents.day = startComponents.day + 6
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)
//    
//    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate!) != NSComparisonResult.OrderedDescending }
//    
//    result
//}



//startComponents.day = 1
//endComponents.day = 0
//
//
//for i in 0...3 {
//startComponents.month = startComponents.month - (i == 0 ? 0 : 1)
//endComponents.month = startComponents.month + 1
//
//
//let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
//let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)!
//    
//    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }
//
//result
//}

// ok
//startComponents.day = 1
//endComponents.day = 0
//
//for i in 0...3 {
//    startComponents.month = startComponents.month - (i == 0 ? 0 : 1)
//    endComponents.month = startComponents.month + 1
//    
//    
//    let startDate = NSCalendar.currentCalendar().dateFromComponents(startComponents)!
//    let endDate = NSCalendar.currentCalendar().dateFromComponents(endComponents)!
//    
//    let result = list.filter { $0.time.compare(startDate) != NSComparisonResult.OrderedAscending && $0.time.compare(endDate) != NSComparisonResult.OrderedDescending }
//    
//    result
//}

func getComponentsByDate(date: NSDate!) -> NSDateComponents! {
    return NSCalendar.currentCalendar().components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay | .CalendarUnitWeekday | .CalendarUnitWeekOfMonth | .CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond, fromDate: date)
}

let dateFormatter = NSDateFormatter()
dateFormatter.timeZone = NSTimeZone.systemTimeZone()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let currentMonthDate = NSDate()
let preMonthDate = dateFormatter.dateFromString("2015-01-05 12:22:31")!

let currentMonthComponts = getComponentsByDate(currentMonthDate)
let preMonthComponts = getComponentsByDate(preMonthDate)


let differ =  preMonthComponts.month -  currentMonthComponts.month

println("differ: \(differ)")
println("differ: \(abs(differ))")

*/

let dateFormatter = NSDateFormatter()
dateFormatter.timeZone = NSTimeZone.systemTimeZone()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let calendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)!

let date1 = dateFormatter.dateFromString("2015-03-02 12:12:12")!
let date2 = dateFormatter.dateFromString("2015-03-03 12:12:11")!
let result = NSCalendar.currentCalendar().components(NSCalendarUnit.DayCalendarUnit, fromDate: date1, toDate: date2, options: NSCalendarOptions.allZeros)
let day = result.day

let result2 = calendar.components(NSCalendarUnit.DayCalendarUnit, fromDate: date1, toDate: date2, options: nil)

let day2 = result2.day



func daysBetweenDateFromDate(date1: NSDate, toDate date2: NSDate) -> Int {
    var fromDate: NSDate?
    var toDate: NSDate?
    var duration: NSTimeInterval = 0

    let calendar = NSCalendar.currentCalendar()
    
    calendar.rangeOfUnit(NSCalendarUnit.DayCalendarUnit, startDate: &fromDate, interval: &duration, forDate: date1)
    calendar.rangeOfUnit(NSCalendarUnit.DayCalendarUnit, startDate: &toDate, interval: &duration, forDate: date2)
    
    let difference = calendar.components(NSCalendarUnit.DayCalendarUnit, fromDate: fromDate!, toDate: toDate!, options: nil)
    return difference.day
}

let day3 = daysBetweenDateFromDate(date1, toDate: date2)


