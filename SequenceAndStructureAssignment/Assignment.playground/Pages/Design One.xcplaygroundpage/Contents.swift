/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
//let canvas = Canvas(width: 500, height: 500)
let canvas = Canvas(width: 500, height: 500, quality: Quality.Ultra)


for X in stride(from: 0, through: 500, by: 20) {
    canvas.drawLine(fromX: 0, fromY: X, toX: X, toY: 0)
    //choose the color
    if X % 1 == 0 {
        canvas.defaultLineWidth = 7
    }else{
        canvas.defaultLineWidth = 1
    }
}
for Y in stride(from: 20, through: 500, by: 20){
    
    
    //choose the color
    if Y % 1 == 0 {
        canvas.defaultLineWidth = 7
    }else{
        canvas.defaultLineWidth = 1
    }
    
    canvas.drawLine(fromX: Y, fromY: 500, toX: 500, toY: Y)
}


for  i in stride(from: 0, through: 24, by: 3){
    if i % 6 == 0 {
        canvas.defaultLineWidth = 7
        canvas.lineColor = Color.black
    } else {
        canvas.lineColor = Color.white
        
    }
    
    for y in stride(from: 502, through: -109, by: -77){
        
        canvas.drawLine(fromX: 10+i*2, fromY: y-i, toX: 80+i*2, toY: y+75-i)
        canvas.drawLine(fromX: 187+i*2, fromY: y-i, toX: 257+i*2, toY: y+75-i)
        canvas.drawLine(fromX: 364+i*2, fromY: y-i, toX: 434+i*2, toY: y+75-i)
    }
}
canvas.copyToClipboard()


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
