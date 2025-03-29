import org.gamecontrolplus.*;
import net.java.games.input.*;

ControlIO control;
ControlDevice xboxController;
float stickX, stickY;

void setup() {
    size(600, 400);
    control = ControlIO.getInstance(this);
    xboxController = control.getMatchedDevice("testconfig"); // You may need to map the device
    
    if (xboxController == null) {
        println("No matching controller found!");
        exit();
    }
}

void draw() {
    background(0);
    
    // Read joystick values
    stickX = xboxController.getSlider("xl").getValue();
    stickY = xboxController.getSlider("yl").getValue();
    
    // Draw a circle representing joystick movement
    fill(255, 0, 0);
    ellipse(width/2 + stickX * 100, height/2 + stickY * 100, 20, 20);
}
