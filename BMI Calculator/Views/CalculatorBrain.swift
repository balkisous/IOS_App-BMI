
import UIKit

struct CalculatorBrain
{
    var Bmi : BMI?
    
    mutating func calculateBmi(height: Float, weight: Float)
    {
        let result = weight / (height * height)
        let bmiValue = Float(result);
        if (bmiValue < 18.5) {
            self.Bmi = BMI(value: bmiValue, advice: "eat more pies!" , color: UIColor.blue)
            //print("underweight")
        } else if (bmiValue >= 18.5 && bmiValue <= 24.9){
            self.Bmi = BMI(value: bmiValue, advice: "Fit as fiddel!", color: UIColor.green)
            //print("normal")
        } else if (bmiValue > 24.9) {
            self.Bmi = BMI(value: bmiValue, advice: "eat less pies!" , color: UIColor.red)
            //print("overweight")
        }
    }
    
    func getBMIValue() -> String
    {
        return (String(format: "%.1f", Bmi?.value ?? 0.0))
    }
    
    func getColor() -> UIColor
    {
        return (Bmi?.color ?? UIColor.white)
    }
    
    func getAdvice() -> String
    {
        return (Bmi?.advice ?? "no advice")
    }
}
