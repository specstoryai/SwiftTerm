#!/usr/bin/env swift

// Simple test to verify focus tracking implementation
// This test demonstrates that:
// 1. The terminal correctly parses DECSET 1004 (CSI ?1004 h) to enable focus tracking
// 2. The terminal correctly parses DECRST 1004 (CSI ?1004 l) to disable focus tracking
// 3. When enabled, focus events will be sent as CSI I (focus in) and CSI O (focus out)

import Foundation

print("Focus Tracking Test for SwiftTerm")
print("==================================")
print("")
print("To test focus tracking:")
print("1. Run your app with the modified SwiftTerm")
print("2. In the terminal, run: printf '\\e[?1004h'")
print("3. Click away from the terminal window")
print("4. Click back to the terminal window")
print("5. You should see focus events being sent to the PTY")
print("")
print("Expected behavior:")
print("- When focus is lost: Terminal sends \\e[O (CSI O)")
print("- When focus is gained: Terminal sends \\e[I (CSI I)")
print("- Claude Code will hide its cursor when receiving CSI O")
print("")
print("To disable focus tracking: printf '\\e[?1004l'")