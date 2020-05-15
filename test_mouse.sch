<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_7" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="PS2_C" />
        <signal name="PS2_D" />
        <signal name="M_DONE_TICK" />
        <signal name="CLK_IN" />
        <signal name="RESET_IN" />
        <signal name="X(8:0)" />
        <signal name="BTN(2:0)" />
        <signal name="Y(8:0)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_56" />
        <signal name="XLXN_62" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <port polarity="BiDirectional" name="PS2_C" />
        <port polarity="BiDirectional" name="PS2_D" />
        <port polarity="Output" name="M_DONE_TICK" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Input" name="RESET_IN" />
        <port polarity="Output" name="X(8:0)" />
        <port polarity="Output" name="BTN(2:0)" />
        <port polarity="Output" name="Y(8:0)" />
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
        <block symbolname="PS2_RX" name="XLXI_1">
            <blockpin signalname="CLK_IN" name="Clk_50MHz" />
            <blockpin signalname="XLXN_66" name="PS2_Clk" />
            <blockpin signalname="XLXN_65" name="PS2_Data" />
            <blockpin signalname="XLXN_64" name="rx_en" />
            <blockpin signalname="XLXN_7" name="DO_Rdy" />
            <blockpin signalname="XLXN_16(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="PS2_TX" name="XLXI_2">
            <blockpin signalname="CLK_IN" name="clk" />
            <blockpin signalname="RESET_IN" name="reset" />
            <blockpin signalname="XLXN_4" name="wr_ps2" />
            <blockpin signalname="XLXN_66" name="ps2c_in" />
            <blockpin signalname="XLXN_65" name="ps2d_in" />
            <blockpin signalname="XLXN_11(7:0)" name="din(7:0)" />
            <blockpin signalname="XLXN_51" name="ps2c_out" />
            <blockpin signalname="XLXN_52" name="ps2d_out" />
            <blockpin signalname="XLXN_62" name="tx_done_tick" />
            <blockpin signalname="XLXN_64" name="tx_idle" />
        </block>
        <block symbolname="mouse_config" name="XLXI_4">
            <blockpin signalname="CLK_IN" name="clk" />
            <blockpin signalname="RESET_IN" name="reset" />
            <blockpin signalname="XLXN_62" name="tx_done" />
            <blockpin signalname="XLXN_7" name="rx_done" />
            <blockpin signalname="XLXN_16(7:0)" name="rx_data(7:0)" />
            <blockpin signalname="M_DONE_TICK" name="m_done_tick" />
            <blockpin signalname="XLXN_4" name="wr" />
            <blockpin signalname="X(8:0)" name="x(8:0)" />
            <blockpin signalname="Y(8:0)" name="y(8:0)" />
            <blockpin signalname="BTN(2:0)" name="btn(2:0)" />
            <blockpin signalname="XLXN_11(7:0)" name="tx_data(7:0)" />
        </block>
        <block symbolname="iobuf" name="XLXI_5">
            <blockpin signalname="XLXN_50" name="I" />
            <blockpin signalname="PS2_C" name="IO" />
            <blockpin signalname="XLXN_66" name="O" />
            <blockpin signalname="XLXN_51" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_6">
            <blockpin signalname="XLXN_49" name="I" />
            <blockpin signalname="PS2_D" name="IO" />
            <blockpin signalname="XLXN_65" name="O" />
            <blockpin signalname="XLXN_52" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_50" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_49" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="1408" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="976" y1="912" y2="1184" x1="976" />
            <wire x2="992" y1="1184" y2="1184" x1="976" />
            <wire x2="1744" y1="912" y2="912" x1="976" />
            <wire x2="1744" y1="912" y2="1920" x1="1744" />
            <wire x2="1744" y1="1920" y2="1920" x1="1312" />
        </branch>
        <branch name="XLXN_11(7:0)">
            <wire x2="992" y1="1376" y2="1376" x1="976" />
            <wire x2="976" y1="1376" y2="1488" x1="976" />
            <wire x2="1376" y1="1488" y2="1488" x1="976" />
            <wire x2="1376" y1="1488" y2="2176" x1="1376" />
            <wire x2="1376" y1="2176" y2="2176" x1="1312" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="832" y1="1008" y2="1008" x1="720" />
            <wire x2="832" y1="1008" y2="2096" x1="832" />
            <wire x2="928" y1="2096" y2="2096" x1="832" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="736" y1="1200" y2="1200" x1="720" />
            <wire x2="736" y1="1200" y2="2176" x1="736" />
            <wire x2="928" y1="2176" y2="2176" x1="736" />
        </branch>
        <instance x="336" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1824" y="1136" name="XLXI_5" orien="R0" />
        <instance x="1840" y="1408" name="XLXI_6" orien="R0" />
        <branch name="PS2_C">
            <wire x2="2080" y1="1008" y2="1008" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1008" name="PS2_C" orien="R0" />
        <branch name="PS2_D">
            <wire x2="2096" y1="1280" y2="1280" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1280" name="PS2_D" orien="R0" />
        <branch name="M_DONE_TICK">
            <wire x2="1424" y1="1856" y2="1856" x1="1312" />
            <wire x2="1440" y1="1648" y2="1648" x1="1424" />
            <wire x2="1424" y1="1648" y2="1856" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1648" name="M_DONE_TICK" orien="R0" />
        <branch name="CLK_IN">
            <wire x2="336" y1="1008" y2="1008" x1="64" />
            <wire x2="64" y1="1008" y2="1344" x1="64" />
            <wire x2="800" y1="1344" y2="1344" x1="64" />
            <wire x2="64" y1="1344" y2="1392" x1="64" />
            <wire x2="64" y1="1392" y2="1424" x1="64" />
            <wire x2="496" y1="1392" y2="1392" x1="64" />
            <wire x2="496" y1="1392" y2="1856" x1="496" />
            <wire x2="928" y1="1856" y2="1856" x1="496" />
            <wire x2="800" y1="1056" y2="1344" x1="800" />
            <wire x2="992" y1="1056" y2="1056" x1="800" />
        </branch>
        <iomarker fontsize="28" x="64" y="1424" name="CLK_IN" orien="R90" />
        <branch name="RESET_IN">
            <wire x2="784" y1="1760" y2="1760" x1="240" />
            <wire x2="784" y1="1760" y2="1936" x1="784" />
            <wire x2="928" y1="1936" y2="1936" x1="784" />
            <wire x2="784" y1="1120" y2="1760" x1="784" />
            <wire x2="992" y1="1120" y2="1120" x1="784" />
        </branch>
        <iomarker fontsize="28" x="240" y="1760" name="RESET_IN" orien="R180" />
        <branch name="X(8:0)">
            <wire x2="1920" y1="1984" y2="1984" x1="1312" />
            <wire x2="1920" y1="1744" y2="1984" x1="1920" />
        </branch>
        <branch name="BTN(2:0)">
            <wire x2="1728" y1="2112" y2="2112" x1="1312" />
            <wire x2="1728" y1="2112" y2="2176" x1="1728" />
            <wire x2="2144" y1="2176" y2="2176" x1="1728" />
            <wire x2="2144" y1="2160" y2="2176" x1="2144" />
        </branch>
        <branch name="Y(8:0)">
            <wire x2="1760" y1="2048" y2="2048" x1="1312" />
            <wire x2="1760" y1="1840" y2="2048" x1="1760" />
            <wire x2="2224" y1="1840" y2="1840" x1="1760" />
            <wire x2="2224" y1="1824" y2="1840" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1744" name="X(8:0)" orien="R270" />
        <iomarker fontsize="28" x="2224" y="1824" name="Y(8:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="2160" name="BTN(2:0)" orien="R270" />
        <instance x="1568" y="1168" name="XLXI_7" orien="R0" />
        <instance x="1552" y="1440" name="XLXI_8" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="1840" y1="1280" y2="1280" x1="1616" />
            <wire x2="1616" y1="1280" y2="1312" x1="1616" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1824" y1="1008" y2="1008" x1="1632" />
            <wire x2="1632" y1="1008" y2="1040" x1="1632" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1584" y1="1056" y2="1056" x1="1376" />
            <wire x2="1584" y1="944" y2="1056" x1="1584" />
            <wire x2="1824" y1="944" y2="944" x1="1584" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1840" y1="1152" y2="1152" x1="1376" />
            <wire x2="1840" y1="1152" y2="1216" x1="1840" />
        </branch>
        <instance x="928" y="2208" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_62">
            <wire x2="848" y1="1744" y2="2016" x1="848" />
            <wire x2="928" y1="2016" y2="2016" x1="848" />
            <wire x2="1488" y1="1744" y2="1744" x1="848" />
            <wire x2="1488" y1="1248" y2="1248" x1="1376" />
            <wire x2="1488" y1="1248" y2="1744" x1="1488" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="336" y1="1200" y2="1200" x1="256" />
            <wire x2="256" y1="1200" y2="1472" x1="256" />
            <wire x2="1456" y1="1472" y2="1472" x1="256" />
            <wire x2="1456" y1="1344" y2="1344" x1="1376" />
            <wire x2="1456" y1="1344" y2="1472" x1="1456" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="336" y1="1136" y2="1136" x1="304" />
            <wire x2="304" y1="1136" y2="1312" x1="304" />
            <wire x2="960" y1="1312" y2="1312" x1="304" />
            <wire x2="992" y1="1312" y2="1312" x1="960" />
            <wire x2="960" y1="992" y2="1312" x1="960" />
            <wire x2="1664" y1="992" y2="992" x1="960" />
            <wire x2="1664" y1="992" y2="1344" x1="1664" />
            <wire x2="1840" y1="1344" y2="1344" x1="1664" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="336" y1="1072" y2="1072" x1="320" />
            <wire x2="320" y1="1072" y2="1248" x1="320" />
            <wire x2="912" y1="1248" y2="1248" x1="320" />
            <wire x2="992" y1="1248" y2="1248" x1="912" />
            <wire x2="912" y1="976" y2="1248" x1="912" />
            <wire x2="1712" y1="976" y2="976" x1="912" />
            <wire x2="1712" y1="976" y2="1072" x1="1712" />
            <wire x2="1824" y1="1072" y2="1072" x1="1712" />
        </branch>
    </sheet>
</drawing>