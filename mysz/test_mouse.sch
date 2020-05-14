<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <blockdef name="PS2_RX">
            <timestamp>2020-5-14T17:39:0</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PS2_TX">
            <timestamp>2020-5-2T15:30:16</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
        </blockdef>
        <blockdef name="mouse_config">
            <timestamp>2020-5-14T17:44:55</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="PS2_RX" name="XLXI_1">
            <blockpin name="Clk_50MHz" />
            <blockpin name="PS2_Clk" />
            <blockpin name="PS2_Data" />
            <blockpin signalname="XLXN_18" name="rx_en" />
            <blockpin signalname="XLXN_7" name="DO_Rdy" />
            <blockpin signalname="XLXN_16(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="PS2_TX" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_4" name="wr_ps2" />
            <blockpin name="ps2c_in" />
            <blockpin name="ps2d_in" />
            <blockpin signalname="XLXN_11(7:0)" name="din(7:0)" />
            <blockpin name="ps2c_out" />
            <blockpin name="ps2d_out" />
            <blockpin signalname="XLXN_5" name="tx_done_tick" />
            <blockpin signalname="XLXN_18" name="tx_idle" />
        </block>
        <block symbolname="mouse_config" name="XLXI_4">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_5" name="tx_done" />
            <blockpin signalname="XLXN_7" name="rx_done" />
            <blockpin signalname="XLXN_16(7:0)" name="rx_data(7:0)" />
            <blockpin name="m_done_tick" />
            <blockpin signalname="XLXN_4" name="wr" />
            <blockpin name="x(8:0)" />
            <blockpin name="y(8:0)" />
            <blockpin name="btn(2:0)" />
            <blockpin signalname="XLXN_11(7:0)" name="tx_data(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="48" y="1328" name="XLXI_1" orien="R0">
        </instance>
        <instance x="992" y="1408" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="976" y1="960" y2="1184" x1="976" />
            <wire x2="992" y1="1184" y2="1184" x1="976" />
            <wire x2="1472" y1="960" y2="960" x1="976" />
            <wire x2="1472" y1="960" y2="1728" x1="1472" />
            <wire x2="1472" y1="1728" y2="1728" x1="976" />
        </branch>
        <branch name="XLXN_11(7:0)">
            <wire x2="992" y1="1376" y2="1376" x1="976" />
            <wire x2="976" y1="1376" y2="1472" x1="976" />
            <wire x2="1040" y1="1472" y2="1472" x1="976" />
            <wire x2="1040" y1="1472" y2="1984" x1="1040" />
            <wire x2="1040" y1="1984" y2="1984" x1="976" />
        </branch>
        <instance x="592" y="2016" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="592" y1="1824" y2="1824" x1="528" />
            <wire x2="528" y1="1824" y2="2080" x1="528" />
            <wire x2="1392" y1="2080" y2="2080" x1="528" />
            <wire x2="1392" y1="1248" y2="1248" x1="1376" />
            <wire x2="1392" y1="1248" y2="2080" x1="1392" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="448" y1="1104" y2="1104" x1="432" />
            <wire x2="448" y1="1104" y2="1904" x1="448" />
            <wire x2="592" y1="1904" y2="1904" x1="448" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="464" y1="1296" y2="1296" x1="432" />
            <wire x2="464" y1="1296" y2="1984" x1="464" />
            <wire x2="464" y1="1984" y2="1984" x1="448" />
            <wire x2="448" y1="1984" y2="2048" x1="448" />
            <wire x2="512" y1="2048" y2="2048" x1="448" />
            <wire x2="512" y1="1984" y2="2048" x1="512" />
            <wire x2="592" y1="1984" y2="1984" x1="512" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="48" y1="1296" y2="1296" x1="32" />
            <wire x2="32" y1="1296" y2="1488" x1="32" />
            <wire x2="80" y1="1488" y2="1488" x1="32" />
            <wire x2="1328" y1="1488" y2="1488" x1="80" />
            <wire x2="1328" y1="1488" y2="1536" x1="1328" />
            <wire x2="1408" y1="1536" y2="1536" x1="1328" />
            <wire x2="1408" y1="1344" y2="1344" x1="1376" />
            <wire x2="1408" y1="1344" y2="1536" x1="1408" />
        </branch>
    </sheet>
</drawing>