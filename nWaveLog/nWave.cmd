wvResizeWindow -win $_nWave1 0 1 1440 803
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/userb06/b06051/CA_HW4/MIPS.fsdb}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvPartialBus -win $_nWave1 {("G1" 6)} -range 31 26
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1099659.042859 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvCopy -win $_nWave1
wvPaste -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvPartialBus -win $_nWave1 {("G1" 9)} -range 5 0
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvPartialBus -win $_nWave1 {("G1" 11)} -range 25 21
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvPartialBus -win $_nWave1 {("G1" 12)} -range 20 16
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvPartialBus -win $_nWave1 {("G1" 13)} -range 15 11
wvSetCursor -win $_nWave1 1103127.380029 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/alu"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/pc"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[25:21\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[20:16\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[15:11\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/write_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalSetOptions -win $_nWave1 -register on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -net on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -all on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetOptions -win $_nWave1 -allscope on
wvGetSignalSetSignalFilter -win $_nWave1 "reg"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1110632.634232 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 1107846.592899 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 4507132.581065 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 424085.253002 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 765912.696857 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[25:21\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[20:16\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[15:11\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/write_data\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR_addr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[25:21\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[20:16\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[15:11\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/write_data\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR_addr\[31:0\]} \
{/SingleCycle_tb/ans\[0:100\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[31:26\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/in2\[31:0\]} \
{/SingleCycle_tb/IR\[5:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/alu/out\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[25:21\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[20:16\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR\[15:11\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/write_data\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/IR_addr\[31:0\]} \
{/SingleCycle_tb/ans\[0:100\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 769978.226781 -snap {("G1" 3)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 19484.669918 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 768504.243972 -snap {("G1" 1)}
wvExit
