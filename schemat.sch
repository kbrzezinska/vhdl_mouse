<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="PS_C" />
        <signal name="PS_D" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="CLK_IN" />
        <signal name="RESET_IN" />
        <signal name="WR_IN" />
        <signal name="DIN_IN(7:0)" />
        <signal name="TX_DONE_TICK" />
        <signal name="TX_IDLE" />
        <port polarity="BiDirectional" name="PS_C" />
        <port polarity="BiDirectional" name="PS_D" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Input" name="RESET_IN" />
        <port polarity="Input" name="WR_IN" />
        <port polarity="Input" name="DIN_IN(7:0)" />
        <port polarity="Output" name="TX_DONE_TICK" />
        <port polarity="Output" name="TX_IDLE" />
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
        <blockdef name="iobuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="-128" y2="-128" x1="224" />
            <line x2="128" y1="-64" y2="-64" x1="160" />
            <line x2="160" y1="-128" y2="-64" x1="160" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="96" y1="-140" y2="-192" x1="96" />
            <line x2="96" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-96" y2="-160" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="128" />
            <line x2="128" y1="-160" y2="-128" x1="64" />
            <line x2="128" y1="-96" y2="-32" x1="128" />
            <line x2="128" y1="-64" y2="-96" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="PS2_TX" name="XLXI_1">
            <blockpin signalname="CLK_IN" name="clk" />
            <blockpin signalname="RESET_IN" name="reset" />
            <blockpin signalname="WR_IN" name="wr_ps2" />
            <blockpin signalname="XLXN_14" name="ps2c_in" />
            <blockpin signalname="XLXN_16" name="ps2d_in" />
            <blockpin signalname="DIN_IN(7:0)" name="din(7:0)" />
            <blockpin signalname="XLXN_12" name="ps2c_out" />
            <blockpin signalname="XLXN_13" name="ps2d_out" />
            <blockpin signalname="TX_DONE_TICK" name="tx_done_tick" />
            <blockpin signalname="TX_IDLE" name="tx_idle" />
        </block>
        <block symbolname="iobuf" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="PS_C" name="IO" />
            <blockpin signalname="XLXN_14" name="O" />
            <blockpin signalname="XLXN_12" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="PS_D" name="IO" />
            <blockpin signalname="XLXN_16" name="O" />
            <blockpin signalname="XLXN_13" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1744" y="976" name="XLXI_2" orien="R0" />
        <instance x="1728" y="1456" name="XLXI_3" orien="R0" />
        <instance x="1168" y="1008" name="XLXI_5" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1744" y1="848" y2="848" x1="1232" />
            <wire x2="1232" y1="848" y2="880" x1="1232" />
        </branch>
        <branch name="PS_C">
            <wire x2="2000" y1="848" y2="848" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="848" name="PS_C" orien="R0" />
        <branch name="PS_D">
            <wire x2="1984" y1="1328" y2="1328" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1328" name="PS_D" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1728" y1="1040" y2="1040" x1="1008" />
            <wire x2="1728" y1="1040" y2="1264" x1="1728" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1008" y1="784" y2="800" x1="1008" />
            <wire x2="1024" y1="800" y2="800" x1="1008" />
            <wire x2="1024" y1="800" y2="944" x1="1024" />
            <wire x2="1504" y1="784" y2="784" x1="1008" />
            <wire x2="1744" y1="784" y2="784" x1="1504" />
            <wire x2="1024" y1="944" y2="944" x1="1008" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="464" y1="688" y2="768" x1="464" />
            <wire x2="464" y1="768" y2="1120" x1="464" />
            <wire x2="464" y1="1120" y2="1136" x1="464" />
            <wire x2="624" y1="1136" y2="1136" x1="464" />
            <wire x2="1520" y1="688" y2="688" x1="464" />
            <wire x2="1520" y1="688" y2="912" x1="1520" />
            <wire x2="1744" y1="912" y2="912" x1="1520" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="624" y1="1200" y2="1200" x1="480" />
            <wire x2="480" y1="1200" y2="1456" x1="480" />
            <wire x2="1328" y1="1456" y2="1456" x1="480" />
            <wire x2="1328" y1="1392" y2="1456" x1="1328" />
            <wire x2="1728" y1="1392" y2="1392" x1="1328" />
        </branch>
        <instance x="1184" y="1392" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1248" y1="1248" y2="1264" x1="1248" />
            <wire x2="1712" y1="1248" y2="1248" x1="1248" />
            <wire x2="1712" y1="1248" y2="1328" x1="1712" />
            <wire x2="1728" y1="1328" y2="1328" x1="1712" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="624" y1="944" y2="944" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="944" name="CLK_IN" orien="R180" />
        <branch name="RESET_IN">
            <wire x2="624" y1="1008" y2="1008" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1008" name="RESET_IN" orien="R180" />
        <branch name="WR_IN">
            <wire x2="624" y1="1072" y2="1072" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1072" name="WR_IN" orien="R180" />
        <branch name="DIN_IN(7:0)">
            <wire x2="624" y1="1264" y2="1264" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1264" name="DIN_IN(7:0)" orien="R180" />
        <branch name="TX_DONE_TICK">
            <wire x2="1040" y1="1136" y2="1136" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1136" name="TX_DONE_TICK" orien="R0" />
        <branch name="TX_IDLE">
            <wire x2="1040" y1="1232" y2="1232" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1232" name="TX_IDLE" orien="R0" />
    </sheet>
</drawing>