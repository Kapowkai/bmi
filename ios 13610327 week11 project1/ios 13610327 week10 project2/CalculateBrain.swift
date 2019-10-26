import Foundation
import UIKit
//struct จะเป็นแบบ pass by Value เหมือนก็อปปี้แยกกันคนละอัน แต่แก้กับอันใดอันนึงจะไม่มีผล
//class จะเป็นแบบ pass by Reference เหมือนก็อปปี้แยกกันคนละอัน แต่แก้อันใดกันอันอันจะมีผลกับอีกอัน
struct CalculateBrain {
//    var bmi:Float = 0.0 // 1 value เก็บตัวเดียวนะ
    
    var bmiStruct:BMI?  // 3 value เก็บสามตัว เป็นชุด
    //? => เป็นตัวแปลOptional คือ ตัวเลือกจะมีหรือไม่มีค่าก็เป็นไปได้
    func getBMIValue() -> String {
//        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "no Advice"
        //if แบบย่อ
        //ตัวแปรที่ต้องการดูค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        //bmiStruct?.addvice ?? "no Advice"
    }
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValueLocal = weight/(height*height)
        
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValueLocal < 24.9 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies!", color: #colorLiteral(red: 0.8862745166, green: 0.4361634865, blue: 0.3797932927, alpha: 1))
        }//end else
    }//end function calculateBMI
}//end struct CalculateBrain
