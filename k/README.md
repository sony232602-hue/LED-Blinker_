# 💡 LED Blinker using Verilog

## 📌 Description

The LED Blinker is a digital hardware project implemented using Verilog HDL. The design uses a clock divider to generate a slower clock signal and toggles an LED periodically.

## ✨ Features

* Clock-based LED blinking
* Configurable counter
* Synchronous reset
* LED ON/OFF control
* Verilog simulation
* Waveform generation

## 🛠️ Technologies Used

* Verilog HDL
* Icarus Verilog
* GTKWave

## 📂 Project Structure

```text
LED-Blinker-Verilog/
├── README.md
├── src/
│   └── led_blinker.v
├── testbench/
│   └── led_blinker_tb.v
├── simulation/
│   ├── simulation-output.txt
│   └── waveform.vcd
└── screenshots/
    └── waveform.png
```

## 🔌 Inputs and Outputs

| Signal | Direction | Description        |
| ------ | --------- | ------------------ |
| clk    | Input     | Clock signal       |
| reset  | Input     | Reset signal       |
| led    | Output    | LED control signal |

## ⚙️ Working Principle

1. The clock signal is continuously supplied to the design.
2. A counter counts the incoming clock cycles.
3. When the counter reaches the selected limit, the LED state is toggled.
4. The counter is reset and starts counting again.
5. This produces a periodic ON/OFF LED signal.

## 🧪 Simulation

The testbench generates the clock and reset signals and observes the LED output.

The waveform can be viewed using GTKWave.

## ▶️ Simulation Commands

Using Icarus Verilog:

```bash
iverilog -o led_blinker_sim src/led_blinker.v testbench/led_blinker_tb.v
vvp led_blinker_sim
gtkwave waveform.vcd
```

## 💻 Expected Output

```text
Time    LED
0       0
50      1
100     0
150     1
200     0
250     1
```

The LED continuously changes between `0` and `1`.

## 🎯 Applications

* FPGA LED control
* Digital system testing
* Clock divider demonstration
* Embedded hardware projects
* Beginner Verilog projects

## 🚀 Future Enhancements

* Multiple LED blinking
* Adjustable blink frequency
* Push-button control
* FPGA board implementation
* Different LED patterns

## 👩‍💻 Author

Developed as a Verilog HDL academic/GitHub project.
