wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/userb06/b06051/CA_HW4/MIPS.fsdb}
wvResizeWindow -win $_nWave1 0 1 1440 799
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/A\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/A\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvPartialBus -win $_nWave1 {("G1" 3)} -range 31 26
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvPartialBus -win $_nWave1 {("G1" 4)} -range 5 0
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvZoomIn -win $_nWave1
