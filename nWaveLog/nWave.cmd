wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/userb06/b06051/CA_HW4/MIPS.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:0\]} \
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
{/SingleCycle_tb/IR\[31:0\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 1 1440 799
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 105774.566762 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvPartialBus -win $_nWave1 {("G1" 2)} -range 31 26
wvSetCursor -win $_nWave1 176110.595811 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 0.000000
wvSetCursor -win $_nWave1 62490.856578 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 64113.995710 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 77640.155142 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 89002.129066 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 76828.585576 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 65466.611653 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 78451.724708 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 89543.175443 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 105233.520385 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 232108.895861 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 223722.677013 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[31:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvExpandBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvPartialBus -win $_nWave1 {("G1" 13)} -range 8 0
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvPartialBus -win $_nWave1 {("G1" 14)} -range 8 0
wvSetCursor -win $_nWave1 185105.491833 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 224331.354187 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 224466.615782 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 225007.662159 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvExpandBus -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvCollapseBus -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvCollapseBus -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetCursor -win $_nWave1 66278.181219 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 66683.966002 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 66954.489191 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 66954.489191 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 67225.012379 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 65466.611653 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 66954.489191 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 67360.273974 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[8:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[8:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/w_jump} \
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
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[8:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[8:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/w_jump} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[8:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[8:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/w_jump} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_reg1\[4:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_reg2\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/SingleCycle_tb/A\[6:0\]} \
{/SingleCycle_tb/IR\[31:26\]} \
{/SingleCycle_tb/clk} \
{/SingleCycle_tb/error\[31:0\]} \
{/SingleCycle_tb/i\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data1\[8:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_data2\[8:0\]} \
{/SingleCycle_tb/ReadDataMem\[31:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/w_jump} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_reg1\[4:0\]} \
{/SingleCycle_tb/SingleCycleMIPS/register/read_reg2\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ACCSHCINX2"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalSetScope -win $_nWave1 "/SingleCycle_tb/SingleCycleMIPS/register"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
