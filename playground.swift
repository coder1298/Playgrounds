import UIKit
import PlaygroundSupport
class MySine: UIView{
    let myWidth: CGFloat = 0.9  // Width of sine function
    let myHeight: CGFloat = 0.4   // Height of sine function
    let xShift: CGFLoat = 0 // X position shift 
    let yShift: CGFloat = 0 // Y position shift
    let periods: CGFloat = 1.0 // number of periods

    override func draw(_ rect: CGRect) {
        let width = rect.width
        let height = rect.height

        let origin = CGPoint(x: width * (1 - myWidth) / 2, y: height * 0.50)

        let path = UIBezierPath()
        path.move(to: origin)

        for angle in stride(from: 5.0, through: 360.0 * periods, by: 5.0) {
            let x = origin.x + xShfit + CGFloat(angle/360.0 * periods) * width * myWidth  
    
            let y = origin.y + yShift - CGFloat(sin(angle/180.0 * Double.pi)) * height * myHeight
     
            path.addLine(to: CGPoint(x: x, y: y))
        }

        UIColor.red.setStroke()
        path.stroke()
    }
}
class MyCosine: UIView{
    let myWidth: CGFloat = 0.9  // Width of cosine function
    let myHeight: CGFloat = 0.4   // Height of cosine function
    let xShift: CGFLoat = 0 // X position shift 
    let yShift:CGFloat = 0 // Y position shift
    let periods:CGFloat = 1.0 //number of periods

    override func draw(_ rect: CGRect) {
        let width = rect.width
        let height = rect.height

        let origin = CGPoint(x: width * (1 - myWidth) / 2, y: height * 0.50)

        let path = UIBezierPath()
        path.move(to: origin)

        for angle in stride(from: 5.0, through: 360.0 * periods, by: 5.0) {
            let x = origin.x + xShift + CGFloat(angle/360.0) * width * myWidth  
        
            let y = origin.y + yShift - CGFloat(cos(angle/180.0 * Double.pi * periods)) * height * myHeight
        
            path.addLine(to: CGPoint(x: x, y: y))
        }

        UIColor.red.setStroke()
        path.stroke()
    }
}

let mySine = MySine(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
mySine.backgroundColor = .white
//let myCosine = MyCosine(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
//myCosine.backgroundColor = .white


