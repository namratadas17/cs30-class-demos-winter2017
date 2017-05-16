message = "Click now!"
backgroundColor = color(255, 255, 255)

def setup():
    size(700, 700)
    
def draw():
    background(backgroundColor)
    fill(0)
    textSize(32)
    textAlign(CENTER)
    text(message, width/2, height/2)
    
def mousePressed():
    global message, backgroundColor
    message = "Game on!"
    backgroundColor = color(247, 240, 0)