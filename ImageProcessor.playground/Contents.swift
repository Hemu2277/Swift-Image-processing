//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")!
// Process the image!


class ImageFilter {
    
    var BrighthnessLevel = 1.0
    var ContrastLevel = 1.0
    var MyRBG = RGBAImage(image: image)!
    
    
    // Contrast filter
    func Contrast() {
        for y in 0..<MyRBG.height{
            for x in 0..<MyRBG.width{
                let index = y*MyRBG.width + x // index of the pixel
                var pixels = MyRBG.pixels[index] // access the pixel
                let m = max(pixels.red, pixels.blue, pixels.green)
                let M = min(255, UInt8(Double(m)*ContrastLevel))
                (pixels.red, pixels.blue, pixels.green)=(M, M, M)
                MyRBG.pixels[index] = pixels
            }
        }
    }
    
    // Brigghtness filter
    func Brightness(){
        for y in 0..<MyRBG.height{
            for x in 0..<MyRBG.width{
                let index = y*MyRBG.width + x // index of the pixel
                var pixels = MyRBG.pixels[index] // access the pixel
                pixels.red = UInt8(min(255.0,Double(pixels.red)*BrighthnessLevel))
                pixels.blue = UInt8(min(255.0,Double(pixels.blue)*BrighthnessLevel))
                pixels.green = UInt8(min(255.0,Double(pixels.green)*BrighthnessLevel ))
                MyRBG.pixels[index] = pixels
            }
        }
    }
    
    // Color Filters
    func ColorMask(color:String){
        
        switch color {
        case "Blue":
            for y in 0..<MyRBG.height{
                for x in 0..<MyRBG.width{
                    let index = y*MyRBG.width + x // index of the pixel
                    var pixels = MyRBG.pixels[index] // access the pixel
                    pixels.green = 0
                    pixels.red = 0
                    MyRBG.pixels[index] = pixels
                }
            }
        case "Red":
            for y in 0..<MyRBG.height{
                for x in 0..<MyRBG.width{
                    let index = y*MyRBG.width + x // index of the pixel
                    var pixels = MyRBG.pixels[index] // access the pixel
                    pixels.green = 0
                    pixels.blue = 0
                    MyRBG.pixels[index] = pixels
                }
            }
        case "Green":
            for y in 0..<MyRBG.height{
                for x in 0..<MyRBG.width{
                    let index = y*MyRBG.width + x // index of the pixel
                    var pixels = MyRBG.pixels[index] // access the pixel
                    pixels.red = 0
                    pixels.blue = 0
                    MyRBG.pixels[index] = pixels
                }
            }
        default:
            MyRBG = RGBAImage(image: image)!
        }

    }
    
    func Default() -> UIImage {
        MyRBG = RGBAImage(image: image)!
        return MyRBG.toUIImage()!
    }
    
        func show() -> UIImage{
        return MyRBG.toUIImage()!
    }
}



//----------------------------------Apply the filter---------------------------------

let c = ImageFilter()

// Blue filter
    c.ColorMask("Blue")
    c.show()

// Brightness
    c.BrighthnessLevel = 2.0
    c.Brightness()
    c.show()

// Contrast
    c.ContrastLevel = 0.75
    c.Contrast()
    c.show()

// Default option
    c.Default()

// Green filter
    c.ColorMask("Green")
    c.show()





































