wvResizeWindow -win $_nWave1 0 1 1440 803
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/users/b06901051/CA_HW4/MIPS.fsdb}
wvSetCursor -win $_nWave1 173859.087270
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/users/b06901051/CA_HW4/MIPS.fsdb}
wvSetCursor -win $_nWave1 2436942.416869
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvExpandBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvCollapseBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
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
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/WEN} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/WEN} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/i_rom"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/WEN} \
{/SingleCycle_tb/i_rom/addr\[6:0\]} \
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
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/WEN} \
{/SingleCycle_tb/i_rom/addr\[6:0\]} \
{/SingleCycle_tb/i_rom/data\[31:0\]} \
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
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/WEN} \
{/SingleCycle_tb/i_rom/addr\[6:0\]} \
{/SingleCycle_tb/i_rom/data\[31:0\]} \
{/SingleCycle_tb/i_rom/i\[31:0\]} \
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
{/SingleCycle_tb/rst_n} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/IR_addr\[31:0\]} \
{/SingleCycle_tb/Data2Mem\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/CEN} \
{/SingleCycle_tb/OEN} \
{/SingleCycle_tb/WEN} \
{/SingleCycle_tb/i_rom/addr\[6:0\]} \
{/SingleCycle_tb/i_rom/data\[31:0\]} \
{/SingleCycle_tb/i_rom/i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
