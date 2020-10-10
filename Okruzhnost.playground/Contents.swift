import Foundation
func Peresechenie(k: Int, B: Int, R: Int) -> String{
    /*
     Исходные уравнения:
     y = k*x + b
     x^2 + y^2 = R^2
     
    (1+k^2)*x^2 + 2*k*b*x + b^2-R^2 = 0
     
     */
    var result = ""
    
    
    let a = 1 + k*k
    let b = 2 * k * B
    let c = B*B - R*R
    
    let discriminant = Double(b*b - 4*a*c)
    
    if discriminant > 0{
        let x1 = (Double(-b) + sqrt(discriminant))/(2.0*Double(a))
        let x2 = (Double(-b) - sqrt(discriminant))/(2.0*Double(a))
        
        let y1 = Double(k)*x1 + Double(B)
        let y2 = Double(k)*x2 + Double(B)
        result = "Есть две точки пересечения - (\(x1),\(y1)), (\(x2),\(y2))"
        
    } else if (discriminant == 0) {
        let x1 = Double(-b)/(2.0*Double(a))
        let y1 = Double(k)*x1 + Double(B)
        result = "Есть одна точка пересечения - (\(x1),\(y1))"
        
    } else if (discriminant < 0){
        result = "Точек пересечения нет"
    }
    return result
    
}

let m = Peresechenie(k: 2, B: 1, R: 1)

