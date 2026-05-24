# Password Verification System with LED Indicators
This project is an Assembly Language and hardware interfacing based password verification system developed using EMU8086 and Arduino. The system validates user-entered passwords and provides visual feedback through LED indicators connected via external hardware components.
The project demonstrates serial communication between low-level Assembly Language code and physical hardware using an Arduino microcontroller bridge.
# 🚀 Features
- Password verification using Assembly Language
- Serial communication between EMU8086 and Arduino
- LED-based visual feedback system
- Hardware interfacing using MAX232 and RS232 communication
 -Detection of correct, incorrect, and incomplete password input
# 💡 LED Indicators
🔴 Red LED → Correct Password

🟡 Yellow LED → Incorrect Password

🟢 Green LED → Incomplete/Missing Input
# 🛠️ Hardware Components
- Breadboard
- Arduino Board (Nano/Uno)
- MAX232 Converter
- USB to RS232 Converter Cable
- Red, Yellow, and Green LEDs
- Jumper Wires
- Laptop with EMU8086
# 💻 Software Used
- EMU8086
- Arduino IDE
# ⚙️ Working Principle
1. User enters a 6-character password
2. Assembly program compares input with predefined password
3. Result is sent through COM port using serial communication
4. Arduino receives the signal and activates the corresponding LED
5. LEDs indicate:
- Correct password
- Wrong password
- Incomplete input
# 🔌 Hardware Interfacing
- EMU8086 communicates through serial COM port
- Arduino reads incoming serial data using Serial.read()
- LEDs are controlled using digitalWrite() functions
# Pin Configuration
- Red LED → Pin 8
- Yellow LED → Pin 9
- Green LED → Pin 10
# 📚 Technologies Used
- Assembly Language (EMU8086)
- Arduino Programming
- Serial Communication
- Embedded Systems
- Hardware Interfacing
# ✅ Conclusion

This project successfully demonstrates the integration of Assembly Language programming with external hardware using serial communication. It provides a practical example of low-level software interacting with embedded hardware components through Arduino and LED indicators.
