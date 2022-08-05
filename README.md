# Piano Keys Implementation Using DE2-115 FPGA Board
This project creates a mock keyboard using a FPGA Board. The keyboard result is a 12 key, single note playable keyboard. Sound is played through the onboard audio codec using an AUX port. Keys are implemented using a bread board and some basic pushbutton switches. Switches are also debounced to remove the chance of bounces interfering with the performance of the keys. If you would like to learn details about the project, then please read this repository's wiki <a href="https://github.com/TheJacobSales/piano-keys-DE2-115-FPGA/wiki">wiki</a>.
<h2>Hardware Requirements</h2>
<ul>
  <li>Personal Computer than supports Intel FPGA MonitorProgram 16.1 or greater</li>
  <li>DE2-115 FPGA Education Development Board</li>
  <li>Bread board</li>
  <li>Multi Colored Jumper Wires</li>
  <li>1 kΩ Resistors x 10</li>
  <li>680 Ω Resistors x 10</li>
  <li>1.5 kΩ Resistors x 4</li>
  <li>8 red LEDs</li>
  <li>12 QTEATAK Tactile Switches, 2 pin, 6 x 6mm, SPST</li>
  <li>6 x 0.01 uF MYLAR Capacitor, 100V, 10%</li>
  <li>5 x 0.1 uF MYLAR Capacitor, 100V, 10%</li>
  <li>2 x 1 uF MYLAR Capacitor, 100V, 10%</li>
</ul>
<h2>Software Requirements</h2>
<ul>
  <li>Quartus Prime 16.1 or greater</li>
  <li>Nios II 16.1 SBT for Eclipse</li>
  <li>Notepad</li>
</ul>
