<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>user profile bio graph and total sales - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<style type="text/css">




    body {

        color: #797979;

        height: 100vh;
        background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
        overflow: hidden;
        filter: drop-shadow(0 0 10px white);

        font-family: 'Open Sans', sans-serif;
        padding: 0px !important;
        margin: 0px !important;
        font-size: 13px;
        text-rendering: optimizeLegibility;
        -webkit-font-smoothing: antialiased;
        -moz-font-smoothing: antialiased;
    }


    .snow {
        position: absolute;
        width: 10px;
        height: 10px;
        background: white;
        border-radius: 50%;
    }
    .snow:nth-child(1) {
        opacity: 0.7343;
        transform: translate(59.7692vw, -10px) scale(0.2418);
        animation: fall-1 12s -5s linear infinite;
    }
    @keyframes fall-1 {
        74.419% {
            transform: translate(59.9794vw, 74.419vh) scale(0.2418);
        }
        to {
            transform: translate(59.8743vw, 100vh) scale(0.2418);
        }
    }
    .snow:nth-child(2) {
        opacity: 0.7142;
        transform: translate(14.8084vw, -10px) scale(0.265);
        animation: fall-2 28s -13s linear infinite;
    }
    @keyframes fall-2 {
        36.231% {
            transform: translate(11.9348vw, 36.231vh) scale(0.265);
        }
        to {
            transform: translate(13.3716vw, 100vh) scale(0.265);
        }
    }
    .snow:nth-child(3) {
        opacity: 0.876;
        transform: translate(70.8956vw, -10px) scale(0.3246);
        animation: fall-3 29s -8s linear infinite;
    }
    @keyframes fall-3 {
        34.27% {
            transform: translate(69.3761vw, 34.27vh) scale(0.3246);
        }
        to {
            transform: translate(70.13585vw, 100vh) scale(0.3246);
        }
    }
    .snow:nth-child(4) {
        opacity: 0.3166;
        transform: translate(36.3883vw, -10px) scale(0.8161);
        animation: fall-4 12s -29s linear infinite;
    }
    @keyframes fall-4 {
        70.905% {
            transform: translate(46.1578vw, 70.905vh) scale(0.8161);
        }
        to {
            transform: translate(41.27305vw, 100vh) scale(0.8161);
        }
    }
    .snow:nth-child(5) {
        opacity: 0.9699;
        transform: translate(8.4263vw, -10px) scale(0.2878);
        animation: fall-5 17s -3s linear infinite;
    }
    @keyframes fall-5 {
        73.318% {
            transform: translate(5.6096vw, 73.318vh) scale(0.2878);
        }
        to {
            transform: translate(7.01795vw, 100vh) scale(0.2878);
        }
    }
    .snow:nth-child(6) {
        opacity: 0.2538;
        transform: translate(38.4006vw, -10px) scale(0.8587);
        animation: fall-6 26s -28s linear infinite;
    }
    @keyframes fall-6 {
        64.95% {
            transform: translate(32.3144vw, 64.95vh) scale(0.8587);
        }
        to {
            transform: translate(35.3575vw, 100vh) scale(0.8587);
        }
    }
    .snow:nth-child(7) {
        opacity: 0.9699;
        transform: translate(15.8932vw, -10px) scale(0.6802);
        animation: fall-7 18s -29s linear infinite;
    }
    @keyframes fall-7 {
        66.797% {
            transform: translate(14.3309vw, 66.797vh) scale(0.6802);
        }
        to {
            transform: translate(15.11205vw, 100vh) scale(0.6802);
        }
    }
    .snow:nth-child(8) {
        opacity: 0.963;
        transform: translate(82.7355vw, -10px) scale(0.8315);
        animation: fall-8 19s -7s linear infinite;
    }
    @keyframes fall-8 {
        51.032% {
            transform: translate(77.4647vw, 51.032vh) scale(0.8315);
        }
        to {
            transform: translate(80.1001vw, 100vh) scale(0.8315);
        }
    }
    .snow:nth-child(9) {
        opacity: 0.8138;
        transform: translate(36.1194vw, -10px) scale(0.3008);
        animation: fall-9 22s -17s linear infinite;
    }
    @keyframes fall-9 {
        46.76% {
            transform: translate(36.1521vw, 46.76vh) scale(0.3008);
        }
        to {
            transform: translate(36.13575vw, 100vh) scale(0.3008);
        }
    }
    .snow:nth-child(10) {
        opacity: 0.6995;
        transform: translate(85.8315vw, -10px) scale(0.8613);
        animation: fall-10 14s -26s linear infinite;
    }
    @keyframes fall-10 {
        43.703% {
            transform: translate(93.9069vw, 43.703vh) scale(0.8613);
        }
        to {
            transform: translate(89.8692vw, 100vh) scale(0.8613);
        }
    }
    .snow:nth-child(11) {
        opacity: 0.8378;
        transform: translate(22.0469vw, -10px) scale(0.7924);
        animation: fall-11 29s -5s linear infinite;
    }
    @keyframes fall-11 {
        63.216% {
            transform: translate(20.0997vw, 63.216vh) scale(0.7924);
        }
        to {
            transform: translate(21.0733vw, 100vh) scale(0.7924);
        }
    }
    .snow:nth-child(12) {
        opacity: 0.5642;
        transform: translate(35.824vw, -10px) scale(0.7301);
        animation: fall-12 10s -24s linear infinite;
    }
    @keyframes fall-12 {
        45.25% {
            transform: translate(34.4273vw, 45.25vh) scale(0.7301);
        }
        to {
            transform: translate(35.12565vw, 100vh) scale(0.7301);
        }
    }
    .snow:nth-child(13) {
        opacity: 0.8491;
        transform: translate(39.9002vw, -10px) scale(0.2045);
        animation: fall-13 20s -3s linear infinite;
    }
    @keyframes fall-13 {
        64.718% {
            transform: translate(41.9283vw, 64.718vh) scale(0.2045);
        }
        to {
            transform: translate(40.91425vw, 100vh) scale(0.2045);
        }
    }
    .snow:nth-child(14) {
        opacity: 0.4272;
        transform: translate(38.6582vw, -10px) scale(0.3092);
        animation: fall-14 25s -12s linear infinite;
    }
    @keyframes fall-14 {
        55.512% {
            transform: translate(44.7621vw, 55.512vh) scale(0.3092);
        }
        to {
            transform: translate(41.71015vw, 100vh) scale(0.3092);
        }
    }
    .snow:nth-child(15) {
        opacity: 0.0653;
        transform: translate(96.062vw, -10px) scale(0.3587);
        animation: fall-15 28s -10s linear infinite;
    }
    @keyframes fall-15 {
        63.575% {
            transform: translate(92.7492vw, 63.575vh) scale(0.3587);
        }
        to {
            transform: translate(94.4056vw, 100vh) scale(0.3587);
        }
    }
    .snow:nth-child(16) {
        opacity: 0.4093;
        transform: translate(10.9144vw, -10px) scale(0.3577);
        animation: fall-16 22s -23s linear infinite;
    }
    @keyframes fall-16 {
        39.443% {
            transform: translate(9.4721vw, 39.443vh) scale(0.3577);
        }
        to {
            transform: translate(10.19325vw, 100vh) scale(0.3577);
        }
    }
    .snow:nth-child(17) {
        opacity: 0.6964;
        transform: translate(46.5223vw, -10px) scale(0.9406);
        animation: fall-17 29s -29s linear infinite;
    }
    @keyframes fall-17 {
        69.7% {
            transform: translate(47.4022vw, 69.7vh) scale(0.9406);
        }
        to {
            transform: translate(46.96225vw, 100vh) scale(0.9406);
        }
    }
    .snow:nth-child(18) {
        opacity: 0.5514;
        transform: translate(42.8342vw, -10px) scale(0.3095);
        animation: fall-18 24s -18s linear infinite;
    }
    @keyframes fall-18 {
        57.505% {
            transform: translate(38.0535vw, 57.505vh) scale(0.3095);
        }
        to {
            transform: translate(40.44385vw, 100vh) scale(0.3095);
        }
    }
    .snow:nth-child(19) {
        opacity: 0.3046;
        transform: translate(34.2505vw, -10px) scale(0.3495);
        animation: fall-19 10s -7s linear infinite;
    }
    @keyframes fall-19 {
        55.542% {
            transform: translate(32.9077vw, 55.542vh) scale(0.3495);
        }
        to {
            transform: translate(33.5791vw, 100vh) scale(0.3495);
        }
    }
    .snow:nth-child(20) {
        opacity: 0.2555;
        transform: translate(23.874vw, -10px) scale(0.8827);
        animation: fall-20 14s -6s linear infinite;
    }
    @keyframes fall-20 {
        44.576% {
            transform: translate(32.5962vw, 44.576vh) scale(0.8827);
        }
        to {
            transform: translate(28.2351vw, 100vh) scale(0.8827);
        }
    }
    .snow:nth-child(21) {
        opacity: 0.5171;
        transform: translate(79.5566vw, -10px) scale(0.0329);
        animation: fall-21 27s -13s linear infinite;
    }
    @keyframes fall-21 {
        72.827% {
            transform: translate(79.4639vw, 72.827vh) scale(0.0329);
        }
        to {
            transform: translate(79.51025vw, 100vh) scale(0.0329);
        }
    }
    .snow:nth-child(22) {
        opacity: 0.6014;
        transform: translate(99.5815vw, -10px) scale(0.193);
        animation: fall-22 17s -11s linear infinite;
    }
    @keyframes fall-22 {
        78.505% {
            transform: translate(90.2626vw, 78.505vh) scale(0.193);
        }
        to {
            transform: translate(94.92205vw, 100vh) scale(0.193);
        }
    }
    .snow:nth-child(23) {
        opacity: 0.5159;
        transform: translate(41.3301vw, -10px) scale(0.3658);
        animation: fall-23 24s -21s linear infinite;
    }
    @keyframes fall-23 {
        56.991% {
            transform: translate(37.7948vw, 56.991vh) scale(0.3658);
        }
        to {
            transform: translate(39.56245vw, 100vh) scale(0.3658);
        }
    }
    .snow:nth-child(24) {
        opacity: 0.4769;
        transform: translate(39.7012vw, -10px) scale(0.4525);
        animation: fall-24 27s -22s linear infinite;
    }
    @keyframes fall-24 {
        70.566% {
            transform: translate(34.4988vw, 70.566vh) scale(0.4525);
        }
        to {
            transform: translate(37.1vw, 100vh) scale(0.4525);
        }
    }
    .snow:nth-child(25) {
        opacity: 0.8515;
        transform: translate(57.6126vw, -10px) scale(0.9347);
        animation: fall-25 24s -17s linear infinite;
    }
    @keyframes fall-25 {
        50.826% {
            transform: translate(52.7735vw, 50.826vh) scale(0.9347);
        }
        to {
            transform: translate(55.19305vw, 100vh) scale(0.9347);
        }
    }
    .snow:nth-child(26) {
        opacity: 0.7736;
        transform: translate(69.2454vw, -10px) scale(0.8193);
        animation: fall-26 27s -1s linear infinite;
    }
    @keyframes fall-26 {
        67.162% {
            transform: translate(77.4524vw, 67.162vh) scale(0.8193);
        }
        to {
            transform: translate(73.3489vw, 100vh) scale(0.8193);
        }
    }
    .snow:nth-child(27) {
        opacity: 0.7442;
        transform: translate(19.1787vw, -10px) scale(0.5044);
        animation: fall-27 18s -9s linear infinite;
    }
    @keyframes fall-27 {
        77.582% {
            transform: translate(20.5932vw, 77.582vh) scale(0.5044);
        }
        to {
            transform: translate(19.88595vw, 100vh) scale(0.5044);
        }
    }
    .snow:nth-child(28) {
        opacity: 0.3494;
        transform: translate(80.5905vw, -10px) scale(0.145);
        animation: fall-28 10s -22s linear infinite;
    }
    @keyframes fall-28 {
        65.267% {
            transform: translate(86.3357vw, 65.267vh) scale(0.145);
        }
        to {
            transform: translate(83.4631vw, 100vh) scale(0.145);
        }
    }
    .snow:nth-child(29) {
        opacity: 0.7675;
        transform: translate(33.7328vw, -10px) scale(0.155);
        animation: fall-29 10s -28s linear infinite;
    }
    @keyframes fall-29 {
        71.892% {
            transform: translate(29.1072vw, 71.892vh) scale(0.155);
        }
        to {
            transform: translate(31.42vw, 100vh) scale(0.155);
        }
    }
    .snow:nth-child(30) {
        opacity: 0.2701;
        transform: translate(86.265vw, -10px) scale(0.384);
        animation: fall-30 28s -9s linear infinite;
    }
    @keyframes fall-30 {
        58.507% {
            transform: translate(80.7076vw, 58.507vh) scale(0.384);
        }
        to {
            transform: translate(83.4863vw, 100vh) scale(0.384);
        }
    }
    .snow:nth-child(31) {
        opacity: 0.6007;
        transform: translate(98.7309vw, -10px) scale(0.628);
        animation: fall-31 24s -23s linear infinite;
    }
    @keyframes fall-31 {
        77.178% {
            transform: translate(99.8739vw, 77.178vh) scale(0.628);
        }
        to {
            transform: translate(99.3024vw, 100vh) scale(0.628);
        }
    }
    .snow:nth-child(32) {
        opacity: 0.9287;
        transform: translate(65.2628vw, -10px) scale(0.2577);
        animation: fall-32 29s -5s linear infinite;
    }
    @keyframes fall-32 {
        44.35% {
            transform: translate(73.7745vw, 44.35vh) scale(0.2577);
        }
        to {
            transform: translate(69.51865vw, 100vh) scale(0.2577);
        }
    }
    .snow:nth-child(33) {
        opacity: 0.8911;
        transform: translate(43.5185vw, -10px) scale(0.3395);
        animation: fall-33 16s -15s linear infinite;
    }
    @keyframes fall-33 {
        41.554% {
            transform: translate(36.0047vw, 41.554vh) scale(0.3395);
        }
        to {
            transform: translate(39.7616vw, 100vh) scale(0.3395);
        }
    }
    .snow:nth-child(34) {
        opacity: 0.302;
        transform: translate(67.982vw, -10px) scale(0.3052);
        animation: fall-34 14s -10s linear infinite;
    }
    @keyframes fall-34 {
        72.265% {
            transform: translate(60.8193vw, 72.265vh) scale(0.3052);
        }
        to {
            transform: translate(64.40065vw, 100vh) scale(0.3052);
        }
    }
    .snow:nth-child(35) {
        opacity: 0.2645;
        transform: translate(6.3815vw, -10px) scale(0.2837);
        animation: fall-35 26s -30s linear infinite;
    }
    @keyframes fall-35 {
        70.561% {
            transform: translate(3.9162vw, 70.561vh) scale(0.2837);
        }
        to {
            transform: translate(5.14885vw, 100vh) scale(0.2837);
        }
    }
    .snow:nth-child(36) {
        opacity: 0.8393;
        transform: translate(31.9712vw, -10px) scale(0.8641);
        animation: fall-36 19s -17s linear infinite;
    }
    @keyframes fall-36 {
        76.27% {
            transform: translate(23.8659vw, 76.27vh) scale(0.8641);
        }
        to {
            transform: translate(27.91855vw, 100vh) scale(0.8641);
        }
    }
    .snow:nth-child(37) {
        opacity: 0.2457;
        transform: translate(28.116vw, -10px) scale(0.9323);
        animation: fall-37 24s -10s linear infinite;
    }
    @keyframes fall-37 {
        31.565% {
            transform: translate(27.1438vw, 31.565vh) scale(0.9323);
        }
        to {
            transform: translate(27.6299vw, 100vh) scale(0.9323);
        }
    }
    .snow:nth-child(38) {
        opacity: 0.1343;
        transform: translate(14.5334vw, -10px) scale(0.1325);
        animation: fall-38 14s -17s linear infinite;
    }
    @keyframes fall-38 {
        61.151% {
            transform: translate(16.2737vw, 61.151vh) scale(0.1325);
        }
        to {
            transform: translate(15.40355vw, 100vh) scale(0.1325);
        }
    }
    .snow:nth-child(39) {
        opacity: 0.9092;
        transform: translate(67.1747vw, -10px) scale(0.4193);
        animation: fall-39 21s -8s linear infinite;
    }
    @keyframes fall-39 {
        47.644% {
            transform: translate(71.9465vw, 47.644vh) scale(0.4193);
        }
        to {
            transform: translate(69.5606vw, 100vh) scale(0.4193);
        }
    }
    .snow:nth-child(40) {
        opacity: 0.9777;
        transform: translate(19.7453vw, -10px) scale(0.4661);
        animation: fall-40 30s -14s linear infinite;
    }
    @keyframes fall-40 {
        41.257% {
            transform: translate(16.9315vw, 41.257vh) scale(0.4661);
        }
        to {
            transform: translate(18.3384vw, 100vh) scale(0.4661);
        }
    }
    .snow:nth-child(41) {
        opacity: 0.125;
        transform: translate(68.3458vw, -10px) scale(0.5268);
        animation: fall-41 28s -1s linear infinite;
    }
    @keyframes fall-41 {
        72.47% {
            transform: translate(68.5374vw, 72.47vh) scale(0.5268);
        }
        to {
            transform: translate(68.4416vw, 100vh) scale(0.5268);
        }
    }
    .snow:nth-child(42) {
        opacity: 0.2421;
        transform: translate(44.7627vw, -10px) scale(0.6695);
        animation: fall-42 19s -27s linear infinite;
    }
    @keyframes fall-42 {
        72.582% {
            transform: translate(35.196vw, 72.582vh) scale(0.6695);
        }
        to {
            transform: translate(39.97935vw, 100vh) scale(0.6695);
        }
    }
    .snow:nth-child(43) {
        opacity: 0.1823;
        transform: translate(27.2653vw, -10px) scale(0.8922);
        animation: fall-43 16s -17s linear infinite;
    }
    @keyframes fall-43 {
        32.772% {
            transform: translate(34.0132vw, 32.772vh) scale(0.8922);
        }
        to {
            transform: translate(30.63925vw, 100vh) scale(0.8922);
        }
    }
    .snow:nth-child(44) {
        opacity: 0.4821;
        transform: translate(23.5876vw, -10px) scale(0.3683);
        animation: fall-44 30s -13s linear infinite;
    }
    @keyframes fall-44 {
        62.105% {
            transform: translate(21.3904vw, 62.105vh) scale(0.3683);
        }
        to {
            transform: translate(22.489vw, 100vh) scale(0.3683);
        }
    }
    .snow:nth-child(45) {
        opacity: 0.5622;
        transform: translate(18.9411vw, -10px) scale(0.3358);
        animation: fall-45 27s -17s linear infinite;
    }
    @keyframes fall-45 {
        72.189% {
            transform: translate(19.6673vw, 72.189vh) scale(0.3358);
        }
        to {
            transform: translate(19.3042vw, 100vh) scale(0.3358);
        }
    }
    .snow:nth-child(46) {
        opacity: 0.6423;
        transform: translate(41.4558vw, -10px) scale(0.5875);
        animation: fall-46 15s -23s linear infinite;
    }
    @keyframes fall-46 {
        30.875% {
            transform: translate(49.305vw, 30.875vh) scale(0.5875);
        }
        to {
            transform: translate(45.3804vw, 100vh) scale(0.5875);
        }
    }
    .snow:nth-child(47) {
        opacity: 0.3909;
        transform: translate(51.8537vw, -10px) scale(0.5173);
        animation: fall-47 17s -6s linear infinite;
    }
    @keyframes fall-47 {
        32.641% {
            transform: translate(45.8415vw, 32.641vh) scale(0.5173);
        }
        to {
            transform: translate(48.8476vw, 100vh) scale(0.5173);
        }
    }
    .snow:nth-child(48) {
        opacity: 0.2158;
        transform: translate(49.4714vw, -10px) scale(0.8397);
        animation: fall-48 11s -16s linear infinite;
    }
    @keyframes fall-48 {
        42.579% {
            transform: translate(39.6002vw, 42.579vh) scale(0.8397);
        }
        to {
            transform: translate(44.5358vw, 100vh) scale(0.8397);
        }
    }
    .snow:nth-child(49) {
        opacity: 0.1197;
        transform: translate(8.2664vw, -10px) scale(0.9208);
        animation: fall-49 29s -16s linear infinite;
    }
    @keyframes fall-49 {
        54.549% {
            transform: translate(11.2301vw, 54.549vh) scale(0.9208);
        }
        to {
            transform: translate(9.74825vw, 100vh) scale(0.9208);
        }
    }
    .snow:nth-child(50) {
        opacity: 0.6027;
        transform: translate(21.9287vw, -10px) scale(0.6045);
        animation: fall-50 11s -15s linear infinite;
    }
    @keyframes fall-50 {
        47.498% {
            transform: translate(16.7482vw, 47.498vh) scale(0.6045);
        }
        to {
            transform: translate(19.33845vw, 100vh) scale(0.6045);
        }
    }
    .snow:nth-child(51) {
        opacity: 0.6424;
        transform: translate(34.1315vw, -10px) scale(0.4851);
        animation: fall-51 13s -22s linear infinite;
    }
    @keyframes fall-51 {
        77.65% {
            transform: translate(29.9329vw, 77.65vh) scale(0.4851);
        }
        to {
            transform: translate(32.0322vw, 100vh) scale(0.4851);
        }
    }
    .snow:nth-child(52) {
        opacity: 0.1427;
        transform: translate(0.5884vw, -10px) scale(0.5862);
        animation: fall-52 11s -5s linear infinite;
    }
    @keyframes fall-52 {
        45.267% {
            transform: translate(-0.3874vw, 45.267vh) scale(0.5862);
        }
        to {
            transform: translate(0.1005vw, 100vh) scale(0.5862);
        }
    }
    .snow:nth-child(53) {
        opacity: 0.1773;
        transform: translate(37.1814vw, -10px) scale(0.0233);
        animation: fall-53 14s -2s linear infinite;
    }
    @keyframes fall-53 {
        60.029% {
            transform: translate(44.6919vw, 60.029vh) scale(0.0233);
        }
        to {
            transform: translate(40.93665vw, 100vh) scale(0.0233);
        }
    }
    .snow:nth-child(54) {
        opacity: 0.8629;
        transform: translate(80.0577vw, -10px) scale(0.7581);
        animation: fall-54 27s -17s linear infinite;
    }
    @keyframes fall-54 {
        67.897% {
            transform: translate(82.3661vw, 67.897vh) scale(0.7581);
        }
        to {
            transform: translate(81.2119vw, 100vh) scale(0.7581);
        }
    }
    .snow:nth-child(55) {
        opacity: 0.4836;
        transform: translate(91.4746vw, -10px) scale(0.5548);
        animation: fall-55 27s -19s linear infinite;
    }
    @keyframes fall-55 {
        51.657% {
            transform: translate(100.4718vw, 51.657vh) scale(0.5548);
        }
        to {
            transform: translate(95.9732vw, 100vh) scale(0.5548);
        }
    }
    .snow:nth-child(56) {
        opacity: 0.3142;
        transform: translate(52.3615vw, -10px) scale(0.7016);
        animation: fall-56 30s -2s linear infinite;
    }
    @keyframes fall-56 {
        59.645% {
            transform: translate(45.1986vw, 59.645vh) scale(0.7016);
        }
        to {
            transform: translate(48.78005vw, 100vh) scale(0.7016);
        }
    }
    .snow:nth-child(57) {
        opacity: 0.0412;
        transform: translate(89.7389vw, -10px) scale(0.7396);
        animation: fall-57 12s -22s linear infinite;
    }
    @keyframes fall-57 {
        56.127% {
            transform: translate(84.0636vw, 56.127vh) scale(0.7396);
        }
        to {
            transform: translate(86.90125vw, 100vh) scale(0.7396);
        }
    }
    .snow:nth-child(58) {
        opacity: 0.5524;
        transform: translate(11.0722vw, -10px) scale(0.4872);
        animation: fall-58 16s -14s linear infinite;
    }
    @keyframes fall-58 {
        49.105% {
            transform: translate(4.7619vw, 49.105vh) scale(0.4872);
        }
        to {
            transform: translate(7.91705vw, 100vh) scale(0.4872);
        }
    }
    .snow:nth-child(59) {
        opacity: 0.1264;
        transform: translate(46.0771vw, -10px) scale(0.4016);
        animation: fall-59 12s -14s linear infinite;
    }
    @keyframes fall-59 {
        43.429% {
            transform: translate(54.3284vw, 43.429vh) scale(0.4016);
        }
        to {
            transform: translate(50.20275vw, 100vh) scale(0.4016);
        }
    }
    .snow:nth-child(60) {
        opacity: 0.4449;
        transform: translate(71.301vw, -10px) scale(0.473);
        animation: fall-60 24s -26s linear infinite;
    }
    @keyframes fall-60 {
        39.483% {
            transform: translate(71.0864vw, 39.483vh) scale(0.473);
        }
        to {
            transform: translate(71.1937vw, 100vh) scale(0.473);
        }
    }
    .snow:nth-child(61) {
        opacity: 0.1301;
        transform: translate(71.8942vw, -10px) scale(0.8115);
        animation: fall-61 23s -17s linear infinite;
    }
    @keyframes fall-61 {
        35.022% {
            transform: translate(80.6588vw, 35.022vh) scale(0.8115);
        }
        to {
            transform: translate(76.2765vw, 100vh) scale(0.8115);
        }
    }
    .snow:nth-child(62) {
        opacity: 0.9165;
        transform: translate(0.6945vw, -10px) scale(0.3218);
        animation: fall-62 19s -20s linear infinite;
    }
    @keyframes fall-62 {
        41.089% {
            transform: translate(-7.9456vw, 41.089vh) scale(0.3218);
        }
        to {
            transform: translate(-3.62555vw, 100vh) scale(0.3218);
        }
    }
    .snow:nth-child(63) {
        opacity: 0.9864;
        transform: translate(71.5954vw, -10px) scale(0.3684);
        animation: fall-63 14s -17s linear infinite;
    }
    @keyframes fall-63 {
        39.798% {
            transform: translate(75.2498vw, 39.798vh) scale(0.3684);
        }
        to {
            transform: translate(73.4226vw, 100vh) scale(0.3684);
        }
    }
    .snow:nth-child(64) {
        opacity: 0.8428;
        transform: translate(26.897vw, -10px) scale(0.3338);
        animation: fall-64 11s -14s linear infinite;
    }
    @keyframes fall-64 {
        73.694% {
            transform: translate(17.9378vw, 73.694vh) scale(0.3338);
        }
        to {
            transform: translate(22.4174vw, 100vh) scale(0.3338);
        }
    }
    .snow:nth-child(65) {
        opacity: 0.1319;
        transform: translate(31.3197vw, -10px) scale(0.8558);
        animation: fall-65 25s -28s linear infinite;
    }
    @keyframes fall-65 {
        32.454% {
            transform: translate(23.5559vw, 32.454vh) scale(0.8558);
        }
        to {
            transform: translate(27.4378vw, 100vh) scale(0.8558);
        }
    }
    .snow:nth-child(66) {
        opacity: 0.9615;
        transform: translate(29.579vw, -10px) scale(0.1903);
        animation: fall-66 19s -8s linear infinite;
    }
    @keyframes fall-66 {
        42.107% {
            transform: translate(22.6509vw, 42.107vh) scale(0.1903);
        }
        to {
            transform: translate(26.11495vw, 100vh) scale(0.1903);
        }
    }
    .snow:nth-child(67) {
        opacity: 0.1994;
        transform: translate(27.5193vw, -10px) scale(0.4567);
        animation: fall-67 27s -25s linear infinite;
    }
    @keyframes fall-67 {
        69.884% {
            transform: translate(37.2571vw, 69.884vh) scale(0.4567);
        }
        to {
            transform: translate(32.3882vw, 100vh) scale(0.4567);
        }
    }
    .snow:nth-child(68) {
        opacity: 0.991;
        transform: translate(2.4001vw, -10px) scale(0.9108);
        animation: fall-68 20s -11s linear infinite;
    }
    @keyframes fall-68 {
        30.239% {
            transform: translate(-2.3789vw, 30.239vh) scale(0.9108);
        }
        to {
            transform: translate(0.0106vw, 100vh) scale(0.9108);
        }
    }
    .snow:nth-child(69) {
        opacity: 0.8216;
        transform: translate(7.822vw, -10px) scale(0.4106);
        animation: fall-69 18s -1s linear infinite;
    }
    @keyframes fall-69 {
        34.451% {
            transform: translate(3.2853vw, 34.451vh) scale(0.4106);
        }
        to {
            transform: translate(5.55365vw, 100vh) scale(0.4106);
        }
    }
    .snow:nth-child(70) {
        opacity: 0.5975;
        transform: translate(67.4986vw, -10px) scale(0.1488);
        animation: fall-70 10s -5s linear infinite;
    }
    @keyframes fall-70 {
        33.953% {
            transform: translate(64.3996vw, 33.953vh) scale(0.1488);
        }
        to {
            transform: translate(65.9491vw, 100vh) scale(0.1488);
        }
    }
    .snow:nth-child(71) {
        opacity: 0.724;
        transform: translate(75.0658vw, -10px) scale(0.6164);
        animation: fall-71 17s -11s linear infinite;
    }
    @keyframes fall-71 {
        79.24% {
            transform: translate(67.4755vw, 79.24vh) scale(0.6164);
        }
        to {
            transform: translate(71.27065vw, 100vh) scale(0.6164);
        }
    }
    .snow:nth-child(72) {
        opacity: 0.492;
        transform: translate(62.9435vw, -10px) scale(0.9068);
        animation: fall-72 20s -21s linear infinite;
    }
    @keyframes fall-72 {
        51.276% {
            transform: translate(57.2228vw, 51.276vh) scale(0.9068);
        }
        to {
            transform: translate(60.08315vw, 100vh) scale(0.9068);
        }
    }
    .snow:nth-child(73) {
        opacity: 0.2605;
        transform: translate(58.8336vw, -10px) scale(0.518);
        animation: fall-73 30s -3s linear infinite;
    }
    @keyframes fall-73 {
        46.074% {
            transform: translate(53.7164vw, 46.074vh) scale(0.518);
        }
        to {
            transform: translate(56.275vw, 100vh) scale(0.518);
        }
    }
    .snow:nth-child(74) {
        opacity: 0.8941;
        transform: translate(68.7684vw, -10px) scale(0.1078);
        animation: fall-74 23s -29s linear infinite;
    }
    @keyframes fall-74 {
        60.086% {
            transform: translate(67.8642vw, 60.086vh) scale(0.1078);
        }
        to {
            transform: translate(68.3163vw, 100vh) scale(0.1078);
        }
    }
    .snow:nth-child(75) {
        opacity: 0.0824;
        transform: translate(56.0046vw, -10px) scale(0.8012);
        animation: fall-75 25s -2s linear infinite;
    }
    @keyframes fall-75 {
        44.309% {
            transform: translate(55.176vw, 44.309vh) scale(0.8012);
        }
        to {
            transform: translate(55.5903vw, 100vh) scale(0.8012);
        }
    }
    .snow:nth-child(76) {
        opacity: 0.5323;
        transform: translate(81.9516vw, -10px) scale(0.1062);
        animation: fall-76 15s -21s linear infinite;
    }
    @keyframes fall-76 {
        72.055% {
            transform: translate(77.5969vw, 72.055vh) scale(0.1062);
        }
        to {
            transform: translate(79.77425vw, 100vh) scale(0.1062);
        }
    }
    .snow:nth-child(77) {
        opacity: 0.3565;
        transform: translate(2.6969vw, -10px) scale(0.6409);
        animation: fall-77 10s -24s linear infinite;
    }
    @keyframes fall-77 {
        68.279% {
            transform: translate(4.9346vw, 68.279vh) scale(0.6409);
        }
        to {
            transform: translate(3.81575vw, 100vh) scale(0.6409);
        }
    }
    .snow:nth-child(78) {
        opacity: 0.4817;
        transform: translate(88.5151vw, -10px) scale(0.6637);
        animation: fall-78 13s -18s linear infinite;
    }
    @keyframes fall-78 {
        43.083% {
            transform: translate(96.4964vw, 43.083vh) scale(0.6637);
        }
        to {
            transform: translate(92.50575vw, 100vh) scale(0.6637);
        }
    }
    .snow:nth-child(79) {
        opacity: 0.3003;
        transform: translate(32.1326vw, -10px) scale(0.019);
        animation: fall-79 19s -7s linear infinite;
    }
    @keyframes fall-79 {
        34.851% {
            transform: translate(22.7731vw, 34.851vh) scale(0.019);
        }
        to {
            transform: translate(27.45285vw, 100vh) scale(0.019);
        }
    }
    .snow:nth-child(80) {
        opacity: 0.4783;
        transform: translate(25.9685vw, -10px) scale(0.6263);
        animation: fall-80 26s -17s linear infinite;
    }
    @keyframes fall-80 {
        74.061% {
            transform: translate(22.7609vw, 74.061vh) scale(0.6263);
        }
        to {
            transform: translate(24.3647vw, 100vh) scale(0.6263);
        }
    }
    .snow:nth-child(81) {
        opacity: 0.3589;
        transform: translate(85.5612vw, -10px) scale(0.5308);
        animation: fall-81 26s -3s linear infinite;
    }
    @keyframes fall-81 {
        32.82% {
            transform: translate(88.4867vw, 32.82vh) scale(0.5308);
        }
        to {
            transform: translate(87.02395vw, 100vh) scale(0.5308);
        }
    }
    .snow:nth-child(82) {
        opacity: 0.9718;
        transform: translate(42.2065vw, -10px) scale(0.1098);
        animation: fall-82 22s -13s linear infinite;
    }
    @keyframes fall-82 {
        47.21% {
            transform: translate(44.3513vw, 47.21vh) scale(0.1098);
        }
        to {
            transform: translate(43.2789vw, 100vh) scale(0.1098);
        }
    }
    .snow:nth-child(83) {
        opacity: 0.6051;
        transform: translate(26.478vw, -10px) scale(0.4898);
        animation: fall-83 27s -16s linear infinite;
    }
    @keyframes fall-83 {
        76.665% {
            transform: translate(32.0266vw, 76.665vh) scale(0.4898);
        }
        to {
            transform: translate(29.2523vw, 100vh) scale(0.4898);
        }
    }
    .snow:nth-child(84) {
        opacity: 0.9348;
        transform: translate(67.2911vw, -10px) scale(0.5497);
        animation: fall-84 17s -21s linear infinite;
    }
    @keyframes fall-84 {
        40.702% {
            transform: translate(76.1829vw, 40.702vh) scale(0.5497);
        }
        to {
            transform: translate(71.737vw, 100vh) scale(0.5497);
        }
    }
    .snow:nth-child(85) {
        opacity: 0.0395;
        transform: translate(27.6797vw, -10px) scale(0.02);
        animation: fall-85 11s -23s linear infinite;
    }
    @keyframes fall-85 {
        68.756% {
            transform: translate(31.3624vw, 68.756vh) scale(0.02);
        }
        to {
            transform: translate(29.52105vw, 100vh) scale(0.02);
        }
    }
    .snow:nth-child(86) {
        opacity: 0.7198;
        transform: translate(31.5666vw, -10px) scale(0.4475);
        animation: fall-86 24s -9s linear infinite;
    }
    @keyframes fall-86 {
        78.913% {
            transform: translate(27.2482vw, 78.913vh) scale(0.4475);
        }
        to {
            transform: translate(29.4074vw, 100vh) scale(0.4475);
        }
    }
    .snow:nth-child(87) {
        opacity: 0.1522;
        transform: translate(77.4651vw, -10px) scale(0.8468);
        animation: fall-87 11s -26s linear infinite;
    }
    @keyframes fall-87 {
        49.349% {
            transform: translate(80.5547vw, 49.349vh) scale(0.8468);
        }
        to {
            transform: translate(79.0099vw, 100vh) scale(0.8468);
        }
    }
    .snow:nth-child(88) {
        opacity: 0.515;
        transform: translate(59.5426vw, -10px) scale(0.0665);
        animation: fall-88 26s -15s linear infinite;
    }
    @keyframes fall-88 {
        64.533% {
            transform: translate(50.9671vw, 64.533vh) scale(0.0665);
        }
        to {
            transform: translate(55.25485vw, 100vh) scale(0.0665);
        }
    }
    .snow:nth-child(89) {
        opacity: 0.6978;
        transform: translate(38.3113vw, -10px) scale(0.5638);
        animation: fall-89 26s -20s linear infinite;
    }
    @keyframes fall-89 {
        58.106% {
            transform: translate(37.5634vw, 58.106vh) scale(0.5638);
        }
        to {
            transform: translate(37.93735vw, 100vh) scale(0.5638);
        }
    }
    .snow:nth-child(90) {
        opacity: 0.3728;
        transform: translate(14.943vw, -10px) scale(0.312);
        animation: fall-90 10s -1s linear infinite;
    }
    @keyframes fall-90 {
        31.697% {
            transform: translate(12.9755vw, 31.697vh) scale(0.312);
        }
        to {
            transform: translate(13.95925vw, 100vh) scale(0.312);
        }
    }
    .snow:nth-child(91) {
        opacity: 0.2559;
        transform: translate(84.7253vw, -10px) scale(0.0599);
        animation: fall-91 27s -28s linear infinite;
    }
    @keyframes fall-91 {
        59.636% {
            transform: translate(87.3818vw, 59.636vh) scale(0.0599);
        }
        to {
            transform: translate(86.05355vw, 100vh) scale(0.0599);
        }
    }
    .snow:nth-child(92) {
        opacity: 0.0584;
        transform: translate(9.0486vw, -10px) scale(0.2198);
        animation: fall-92 22s -23s linear infinite;
    }
    @keyframes fall-92 {
        36.637% {
            transform: translate(10.5484vw, 36.637vh) scale(0.2198);
        }
        to {
            transform: translate(9.7985vw, 100vh) scale(0.2198);
        }
    }
    .snow:nth-child(93) {
        opacity: 0.8829;
        transform: translate(89.2631vw, -10px) scale(0.4505);
        animation: fall-93 15s -18s linear infinite;
    }
    @keyframes fall-93 {
        49.132% {
            transform: translate(91.2171vw, 49.132vh) scale(0.4505);
        }
        to {
            transform: translate(90.2401vw, 100vh) scale(0.4505);
        }
    }
    .snow:nth-child(94) {
        opacity: 0.4;
        transform: translate(80.9677vw, -10px) scale(0.4933);
        animation: fall-94 10s -20s linear infinite;
    }
    @keyframes fall-94 {
        45.399% {
            transform: translate(82.7489vw, 45.399vh) scale(0.4933);
        }
        to {
            transform: translate(81.8583vw, 100vh) scale(0.4933);
        }
    }
    .snow:nth-child(95) {
        opacity: 0.1942;
        transform: translate(11.0525vw, -10px) scale(0.1871);
        animation: fall-95 13s -21s linear infinite;
    }
    @keyframes fall-95 {
        74.254% {
            transform: translate(13.3244vw, 74.254vh) scale(0.1871);
        }
        to {
            transform: translate(12.18845vw, 100vh) scale(0.1871);
        }
    }
    .snow:nth-child(96) {
        opacity: 0.2887;
        transform: translate(98.824vw, -10px) scale(0.0426);
        animation: fall-96 21s -29s linear infinite;
    }
    @keyframes fall-96 {
        56.48% {
            transform: translate(89.4726vw, 56.48vh) scale(0.0426);
        }
        to {
            transform: translate(94.1483vw, 100vh) scale(0.0426);
        }
    }
    .snow:nth-child(97) {
        opacity: 0.4809;
        transform: translate(85.5125vw, -10px) scale(0.8415);
        animation: fall-97 14s -4s linear infinite;
    }
    @keyframes fall-97 {
        67.589% {
            transform: translate(92.8363vw, 67.589vh) scale(0.8415);
        }
        to {
            transform: translate(89.1744vw, 100vh) scale(0.8415);
        }
    }
    .snow:nth-child(98) {
        opacity: 0.6606;
        transform: translate(94.9106vw, -10px) scale(0.6274);
        animation: fall-98 23s -5s linear infinite;
    }
    @keyframes fall-98 {
        68.696% {
            transform: translate(89.0473vw, 68.696vh) scale(0.6274);
        }
        to {
            transform: translate(91.97895vw, 100vh) scale(0.6274);
        }
    }
    .snow:nth-child(99) {
        opacity: 0.1553;
        transform: translate(4.6904vw, -10px) scale(0.8781);
        animation: fall-99 12s -6s linear infinite;
    }
    @keyframes fall-99 {
        54.237% {
            transform: translate(3.5725vw, 54.237vh) scale(0.8781);
        }
        to {
            transform: translate(4.13145vw, 100vh) scale(0.8781);
        }
    }
    .snow:nth-child(100) {
        opacity: 0.3488;
        transform: translate(36.852vw, -10px) scale(0.5756);
        animation: fall-100 26s -4s linear infinite;
    }
    @keyframes fall-100 {
        48.802% {
            transform: translate(28.4806vw, 48.802vh) scale(0.5756);
        }
        to {
            transform: translate(32.6663vw, 100vh) scale(0.5756);
        }
    }
    .snow:nth-child(101) {
        opacity: 0.595;
        transform: translate(68.4156vw, -10px) scale(0.59);
        animation: fall-101 22s -9s linear infinite;
    }
    @keyframes fall-101 {
        51.847% {
            transform: translate(64.2005vw, 51.847vh) scale(0.59);
        }
        to {
            transform: translate(66.30805vw, 100vh) scale(0.59);
        }
    }
    .snow:nth-child(102) {
        opacity: 0.7708;
        transform: translate(21.0284vw, -10px) scale(0.089);
        animation: fall-102 22s -4s linear infinite;
    }
    @keyframes fall-102 {
        46.97% {
            transform: translate(12.989vw, 46.97vh) scale(0.089);
        }
        to {
            transform: translate(17.0087vw, 100vh) scale(0.089);
        }
    }
    .snow:nth-child(103) {
        opacity: 0.8915;
        transform: translate(13.5908vw, -10px) scale(0.3206);
        animation: fall-103 30s -29s linear infinite;
    }
    @keyframes fall-103 {
        34.509% {
            transform: translate(7.837vw, 34.509vh) scale(0.3206);
        }
        to {
            transform: translate(10.7139vw, 100vh) scale(0.3206);
        }
    }
    .snow:nth-child(104) {
        opacity: 0.9422;
        transform: translate(25.8402vw, -10px) scale(0.7537);
        animation: fall-104 18s -3s linear infinite;
    }
    @keyframes fall-104 {
        45.999% {
            transform: translate(21.4721vw, 45.999vh) scale(0.7537);
        }
        to {
            transform: translate(23.65615vw, 100vh) scale(0.7537);
        }
    }
    .snow:nth-child(105) {
        opacity: 0.1614;
        transform: translate(38.4313vw, -10px) scale(0.4104);
        animation: fall-105 25s -24s linear infinite;
    }
    @keyframes fall-105 {
        69.255% {
            transform: translate(44.0544vw, 69.255vh) scale(0.4104);
        }
        to {
            transform: translate(41.24285vw, 100vh) scale(0.4104);
        }
    }
    .snow:nth-child(106) {
        opacity: 0.0289;
        transform: translate(36.1992vw, -10px) scale(0.5133);
        animation: fall-106 12s -2s linear infinite;
    }
    @keyframes fall-106 {
        66.747% {
            transform: translate(33.3953vw, 66.747vh) scale(0.5133);
        }
        to {
            transform: translate(34.79725vw, 100vh) scale(0.5133);
        }
    }
    .snow:nth-child(107) {
        opacity: 0.1707;
        transform: translate(35.2988vw, -10px) scale(0.9411);
        animation: fall-107 28s -9s linear infinite;
    }
    @keyframes fall-107 {
        31.216% {
            transform: translate(40.0804vw, 31.216vh) scale(0.9411);
        }
        to {
            transform: translate(37.6896vw, 100vh) scale(0.9411);
        }
    }
    .snow:nth-child(108) {
        opacity: 0.8633;
        transform: translate(33.5092vw, -10px) scale(0.1508);
        animation: fall-108 28s -1s linear infinite;
    }
    @keyframes fall-108 {
        68.818% {
            transform: translate(37.8991vw, 68.818vh) scale(0.1508);
        }
        to {
            transform: translate(35.70415vw, 100vh) scale(0.1508);
        }
    }
    .snow:nth-child(109) {
        opacity: 0.637;
        transform: translate(13.7404vw, -10px) scale(0.9439);
        animation: fall-109 14s -7s linear infinite;
    }
    @keyframes fall-109 {
        39.077% {
            transform: translate(9.8923vw, 39.077vh) scale(0.9439);
        }
        to {
            transform: translate(11.81635vw, 100vh) scale(0.9439);
        }
    }
    .snow:nth-child(110) {
        opacity: 0.2132;
        transform: translate(16.3844vw, -10px) scale(0.6139);
        animation: fall-110 13s -3s linear infinite;
    }
    @keyframes fall-110 {
        56.923% {
            transform: translate(25.05vw, 56.923vh) scale(0.6139);
        }
        to {
            transform: translate(20.7172vw, 100vh) scale(0.6139);
        }
    }
    .snow:nth-child(111) {
        opacity: 0.2311;
        transform: translate(65.5668vw, -10px) scale(0.6942);
        animation: fall-111 21s -9s linear infinite;
    }
    @keyframes fall-111 {
        40.922% {
            transform: translate(61.1919vw, 40.922vh) scale(0.6942);
        }
        to {
            transform: translate(63.37935vw, 100vh) scale(0.6942);
        }
    }
    .snow:nth-child(112) {
        opacity: 0.6084;
        transform: translate(87.8928vw, -10px) scale(0.0374);
        animation: fall-112 17s -14s linear infinite;
    }
    @keyframes fall-112 {
        36.801% {
            transform: translate(82.6077vw, 36.801vh) scale(0.0374);
        }
        to {
            transform: translate(85.25025vw, 100vh) scale(0.0374);
        }
    }
    .snow:nth-child(113) {
        opacity: 0.3077;
        transform: translate(30.3159vw, -10px) scale(0.4597);
        animation: fall-113 20s -29s linear infinite;
    }
    @keyframes fall-113 {
        68.123% {
            transform: translate(30.8036vw, 68.123vh) scale(0.4597);
        }
        to {
            transform: translate(30.55975vw, 100vh) scale(0.4597);
        }
    }
    .snow:nth-child(114) {
        opacity: 0.3441;
        transform: translate(63.143vw, -10px) scale(0.7422);
        animation: fall-114 13s -21s linear infinite;
    }
    @keyframes fall-114 {
        62.672% {
            transform: translate(64.4604vw, 62.672vh) scale(0.7422);
        }
        to {
            transform: translate(63.8017vw, 100vh) scale(0.7422);
        }
    }
    .snow:nth-child(115) {
        opacity: 0.78;
        transform: translate(57.1953vw, -10px) scale(0.4914);
        animation: fall-115 11s -16s linear infinite;
    }
    @keyframes fall-115 {
        31.922% {
            transform: translate(60.6334vw, 31.922vh) scale(0.4914);
        }
        to {
            transform: translate(58.91435vw, 100vh) scale(0.4914);
        }
    }
    .snow:nth-child(116) {
        opacity: 0.6164;
        transform: translate(71.3897vw, -10px) scale(0.5362);
        animation: fall-116 21s -22s linear infinite;
    }
    @keyframes fall-116 {
        61.638% {
            transform: translate(74.1956vw, 61.638vh) scale(0.5362);
        }
        to {
            transform: translate(72.79265vw, 100vh) scale(0.5362);
        }
    }
    .snow:nth-child(117) {
        opacity: 0.1424;
        transform: translate(3.1107vw, -10px) scale(0.1546);
        animation: fall-117 29s -18s linear infinite;
    }
    @keyframes fall-117 {
        48.872% {
            transform: translate(3.7151vw, 48.872vh) scale(0.1546);
        }
        to {
            transform: translate(3.4129vw, 100vh) scale(0.1546);
        }
    }
    .snow:nth-child(118) {
        opacity: 0.6131;
        transform: translate(13.2386vw, -10px) scale(0.7103);
        animation: fall-118 20s -30s linear infinite;
    }
    @keyframes fall-118 {
        45.081% {
            transform: translate(17.9781vw, 45.081vh) scale(0.7103);
        }
        to {
            transform: translate(15.60835vw, 100vh) scale(0.7103);
        }
    }
    .snow:nth-child(119) {
        opacity: 0.8197;
        transform: translate(25.929vw, -10px) scale(0.9478);
        animation: fall-119 28s -20s linear infinite;
    }
    @keyframes fall-119 {
        77.526% {
            transform: translate(33.6771vw, 77.526vh) scale(0.9478);
        }
        to {
            transform: translate(29.80305vw, 100vh) scale(0.9478);
        }
    }
    .snow:nth-child(120) {
        opacity: 0.6293;
        transform: translate(32.3275vw, -10px) scale(0.2028);
        animation: fall-120 11s -8s linear infinite;
    }
    @keyframes fall-120 {
        32.132% {
            transform: translate(24.7811vw, 32.132vh) scale(0.2028);
        }
        to {
            transform: translate(28.5543vw, 100vh) scale(0.2028);
        }
    }
    .snow:nth-child(121) {
        opacity: 0.0924;
        transform: translate(43.2404vw, -10px) scale(0.5868);
        animation: fall-121 27s -2s linear infinite;
    }
    @keyframes fall-121 {
        40.477% {
            transform: translate(45.1869vw, 40.477vh) scale(0.5868);
        }
        to {
            transform: translate(44.21365vw, 100vh) scale(0.5868);
        }
    }
    .snow:nth-child(122) {
        opacity: 0.2628;
        transform: translate(98.2705vw, -10px) scale(0.8814);
        animation: fall-122 10s -19s linear infinite;
    }
    @keyframes fall-122 {
        43.041% {
            transform: translate(91.0861vw, 43.041vh) scale(0.8814);
        }
        to {
            transform: translate(94.6783vw, 100vh) scale(0.8814);
        }
    }
    .snow:nth-child(123) {
        opacity: 0.3687;
        transform: translate(39.4809vw, -10px) scale(0.6714);
        animation: fall-123 16s -12s linear infinite;
    }
    @keyframes fall-123 {
        55.322% {
            transform: translate(38.8621vw, 55.322vh) scale(0.6714);
        }
        to {
            transform: translate(39.1715vw, 100vh) scale(0.6714);
        }
    }
    .snow:nth-child(124) {
        opacity: 0.4746;
        transform: translate(56.2337vw, -10px) scale(0.1016);
        animation: fall-124 28s -18s linear infinite;
    }
    @keyframes fall-124 {
        58.384% {
            transform: translate(64.9341vw, 58.384vh) scale(0.1016);
        }
        to {
            transform: translate(60.5839vw, 100vh) scale(0.1016);
        }
    }
    .snow:nth-child(125) {
        opacity: 0.8756;
        transform: translate(15.1487vw, -10px) scale(0.1412);
        animation: fall-125 15s -2s linear infinite;
    }
    @keyframes fall-125 {
        75.719% {
            transform: translate(7.7319vw, 75.719vh) scale(0.1412);
        }
        to {
            transform: translate(11.4403vw, 100vh) scale(0.1412);
        }
    }
    .snow:nth-child(126) {
        opacity: 0.0057;
        transform: translate(23.348vw, -10px) scale(0.3661);
        animation: fall-126 18s -4s linear infinite;
    }
    @keyframes fall-126 {
        77.152% {
            transform: translate(30.3578vw, 77.152vh) scale(0.3661);
        }
        to {
            transform: translate(26.8529vw, 100vh) scale(0.3661);
        }
    }
    .snow:nth-child(127) {
        opacity: 0.2501;
        transform: translate(66.4616vw, -10px) scale(0.293);
        animation: fall-127 13s -17s linear infinite;
    }
    @keyframes fall-127 {
        66.348% {
            transform: translate(66.1722vw, 66.348vh) scale(0.293);
        }
        to {
            transform: translate(66.3169vw, 100vh) scale(0.293);
        }
    }
    .snow:nth-child(128) {
        opacity: 0.6205;
        transform: translate(77.0529vw, -10px) scale(0.9973);
        animation: fall-128 11s -27s linear infinite;
    }
    @keyframes fall-128 {
        78.657% {
            transform: translate(78.9573vw, 78.657vh) scale(0.9973);
        }
        to {
            transform: translate(78.0051vw, 100vh) scale(0.9973);
        }
    }
    .snow:nth-child(129) {
        opacity: 0.1417;
        transform: translate(10.383vw, -10px) scale(0.2716);
        animation: fall-129 30s -4s linear infinite;
    }
    @keyframes fall-129 {
        65.619% {
            transform: translate(19.2404vw, 65.619vh) scale(0.2716);
        }
        to {
            transform: translate(14.8117vw, 100vh) scale(0.2716);
        }
    }
    .snow:nth-child(130) {
        opacity: 0.3199;
        transform: translate(6.8621vw, -10px) scale(0.1298);
        animation: fall-130 14s -23s linear infinite;
    }
    @keyframes fall-130 {
        76.959% {
            transform: translate(12.7701vw, 76.959vh) scale(0.1298);
        }
        to {
            transform: translate(9.8161vw, 100vh) scale(0.1298);
        }
    }
    .snow:nth-child(131) {
        opacity: 0.0346;
        transform: translate(24.9599vw, -10px) scale(0.6746);
        animation: fall-131 11s -13s linear infinite;
    }
    @keyframes fall-131 {
        60.577% {
            transform: translate(21.6658vw, 60.577vh) scale(0.6746);
        }
        to {
            transform: translate(23.31285vw, 100vh) scale(0.6746);
        }
    }
    .snow:nth-child(132) {
        opacity: 0.1373;
        transform: translate(18.0986vw, -10px) scale(0.9996);
        animation: fall-132 14s -1s linear infinite;
    }
    @keyframes fall-132 {
        47.976% {
            transform: translate(15.2051vw, 47.976vh) scale(0.9996);
        }
        to {
            transform: translate(16.65185vw, 100vh) scale(0.9996);
        }
    }
    .snow:nth-child(133) {
        opacity: 0.0594;
        transform: translate(3.129vw, -10px) scale(0.7064);
        animation: fall-133 23s -4s linear infinite;
    }
    @keyframes fall-133 {
        47.676% {
            transform: translate(-5.4301vw, 47.676vh) scale(0.7064);
        }
        to {
            transform: translate(-1.15055vw, 100vh) scale(0.7064);
        }
    }
    .snow:nth-child(134) {
        opacity: 0.1781;
        transform: translate(19.0136vw, -10px) scale(0.5652);
        animation: fall-134 20s -14s linear infinite;
    }
    @keyframes fall-134 {
        61.669% {
            transform: translate(14.6349vw, 61.669vh) scale(0.5652);
        }
        to {
            transform: translate(16.82425vw, 100vh) scale(0.5652);
        }
    }
    .snow:nth-child(135) {
        opacity: 0.6134;
        transform: translate(16.6137vw, -10px) scale(0.9516);
        animation: fall-135 24s -2s linear infinite;
    }
    @keyframes fall-135 {
        75.602% {
            transform: translate(12.1861vw, 75.602vh) scale(0.9516);
        }
        to {
            transform: translate(14.3999vw, 100vh) scale(0.9516);
        }
    }
    .snow:nth-child(136) {
        opacity: 0.0307;
        transform: translate(31.1564vw, -10px) scale(0.2959);
        animation: fall-136 28s -13s linear infinite;
    }
    @keyframes fall-136 {
        42.947% {
            transform: translate(38.6203vw, 42.947vh) scale(0.2959);
        }
        to {
            transform: translate(34.88835vw, 100vh) scale(0.2959);
        }
    }
    .snow:nth-child(137) {
        opacity: 0.5525;
        transform: translate(80.6241vw, -10px) scale(0.1791);
        animation: fall-137 21s -16s linear infinite;
    }
    @keyframes fall-137 {
        69.392% {
            transform: translate(85.5345vw, 69.392vh) scale(0.1791);
        }
        to {
            transform: translate(83.0793vw, 100vh) scale(0.1791);
        }
    }
    .snow:nth-child(138) {
        opacity: 0.2;
        transform: translate(79.2796vw, -10px) scale(0.1006);
        animation: fall-138 18s -26s linear infinite;
    }
    @keyframes fall-138 {
        31.744% {
            transform: translate(83.4031vw, 31.744vh) scale(0.1006);
        }
        to {
            transform: translate(81.34135vw, 100vh) scale(0.1006);
        }
    }
    .snow:nth-child(139) {
        opacity: 0.4188;
        transform: translate(4.1634vw, -10px) scale(0.5696);
        animation: fall-139 26s -15s linear infinite;
    }
    @keyframes fall-139 {
        47.491% {
            transform: translate(11.2106vw, 47.491vh) scale(0.5696);
        }
        to {
            transform: translate(7.687vw, 100vh) scale(0.5696);
        }
    }
    .snow:nth-child(140) {
        opacity: 0.473;
        transform: translate(15.6992vw, -10px) scale(0.6863);
        animation: fall-140 25s -3s linear infinite;
    }
    @keyframes fall-140 {
        72.851% {
            transform: translate(21.0767vw, 72.851vh) scale(0.6863);
        }
        to {
            transform: translate(18.38795vw, 100vh) scale(0.6863);
        }
    }
    .snow:nth-child(141) {
        opacity: 0.6232;
        transform: translate(39.5509vw, -10px) scale(0.1087);
        animation: fall-141 27s -14s linear infinite;
    }
    @keyframes fall-141 {
        35.284% {
            transform: translate(39.9142vw, 35.284vh) scale(0.1087);
        }
        to {
            transform: translate(39.73255vw, 100vh) scale(0.1087);
        }
    }
    .snow:nth-child(142) {
        opacity: 0.5193;
        transform: translate(60.6802vw, -10px) scale(0.266);
        animation: fall-142 18s -30s linear infinite;
    }
    @keyframes fall-142 {
        45.633% {
            transform: translate(51.0938vw, 45.633vh) scale(0.266);
        }
        to {
            transform: translate(55.887vw, 100vh) scale(0.266);
        }
    }
    .snow:nth-child(143) {
        opacity: 0.8654;
        transform: translate(10.9785vw, -10px) scale(0.3089);
        animation: fall-143 19s -28s linear infinite;
    }
    @keyframes fall-143 {
        64.231% {
            transform: translate(13.8242vw, 64.231vh) scale(0.3089);
        }
        to {
            transform: translate(12.40135vw, 100vh) scale(0.3089);
        }
    }
    .snow:nth-child(144) {
        opacity: 0.7827;
        transform: translate(9.7188vw, -10px) scale(0.9907);
        animation: fall-144 21s -13s linear infinite;
    }
    @keyframes fall-144 {
        32.304% {
            transform: translate(13.8081vw, 32.304vh) scale(0.9907);
        }
        to {
            transform: translate(11.76345vw, 100vh) scale(0.9907);
        }
    }
    .snow:nth-child(145) {
        opacity: 0.6005;
        transform: translate(94.9573vw, -10px) scale(0.3331);
        animation: fall-145 18s -4s linear infinite;
    }
    @keyframes fall-145 {
        78.009% {
            transform: translate(87.8831vw, 78.009vh) scale(0.3331);
        }
        to {
            transform: translate(91.4202vw, 100vh) scale(0.3331);
        }
    }
    .snow:nth-child(146) {
        opacity: 0.6486;
        transform: translate(11.2722vw, -10px) scale(0.5237);
        animation: fall-146 22s -15s linear infinite;
    }
    @keyframes fall-146 {
        60.015% {
            transform: translate(4.9669vw, 60.015vh) scale(0.5237);
        }
        to {
            transform: translate(8.11955vw, 100vh) scale(0.5237);
        }
    }
    .snow:nth-child(147) {
        opacity: 0.2112;
        transform: translate(27.5248vw, -10px) scale(0.5108);
        animation: fall-147 15s -17s linear infinite;
    }
    @keyframes fall-147 {
        52.236% {
            transform: translate(29.0157vw, 52.236vh) scale(0.5108);
        }
        to {
            transform: translate(28.27025vw, 100vh) scale(0.5108);
        }
    }
    .snow:nth-child(148) {
        opacity: 0.5959;
        transform: translate(87.6457vw, -10px) scale(0.4589);
        animation: fall-148 13s -23s linear infinite;
    }
    @keyframes fall-148 {
        59.909% {
            transform: translate(78.2142vw, 59.909vh) scale(0.4589);
        }
        to {
            transform: translate(82.92995vw, 100vh) scale(0.4589);
        }
    }
    .snow:nth-child(149) {
        opacity: 0.1182;
        transform: translate(35.098vw, -10px) scale(0.2528);
        animation: fall-149 14s -28s linear infinite;
    }
    @keyframes fall-149 {
        74.142% {
            transform: translate(41.8918vw, 74.142vh) scale(0.2528);
        }
        to {
            transform: translate(38.4949vw, 100vh) scale(0.2528);
        }
    }
    .snow:nth-child(150) {
        opacity: 0.333;
        transform: translate(86.9853vw, -10px) scale(0.2494);
        animation: fall-150 16s -8s linear infinite;
    }
    @keyframes fall-150 {
        72.643% {
            transform: translate(83.6119vw, 72.643vh) scale(0.2494);
        }
        to {
            transform: translate(85.2986vw, 100vh) scale(0.2494);
        }
    }
    .snow:nth-child(151) {
        opacity: 0.3546;
        transform: translate(1.5104vw, -10px) scale(0.4791);
        animation: fall-151 13s -10s linear infinite;
    }
    @keyframes fall-151 {
        70.906% {
            transform: translate(8.105vw, 70.906vh) scale(0.4791);
        }
        to {
            transform: translate(4.8077vw, 100vh) scale(0.4791);
        }
    }
    .snow:nth-child(152) {
        opacity: 0.3419;
        transform: translate(50.7199vw, -10px) scale(0.9075);
        animation: fall-152 17s -22s linear infinite;
    }
    @keyframes fall-152 {
        55.084% {
            transform: translate(57.7154vw, 55.084vh) scale(0.9075);
        }
        to {
            transform: translate(54.21765vw, 100vh) scale(0.9075);
        }
    }
    .snow:nth-child(153) {
        opacity: 0.9666;
        transform: translate(23.8906vw, -10px) scale(0.7223);
        animation: fall-153 13s -16s linear infinite;
    }
    @keyframes fall-153 {
        53.268% {
            transform: translate(16.692vw, 53.268vh) scale(0.7223);
        }
        to {
            transform: translate(20.2913vw, 100vh) scale(0.7223);
        }
    }
    .snow:nth-child(154) {
        opacity: 0.0798;
        transform: translate(9.8021vw, -10px) scale(0.5073);
        animation: fall-154 20s -27s linear infinite;
    }
    @keyframes fall-154 {
        31.721% {
            transform: translate(8.5489vw, 31.721vh) scale(0.5073);
        }
        to {
            transform: translate(9.1755vw, 100vh) scale(0.5073);
        }
    }
    .snow:nth-child(155) {
        opacity: 0.2832;
        transform: translate(30.6137vw, -10px) scale(0.022);
        animation: fall-155 19s -7s linear infinite;
    }
    @keyframes fall-155 {
        63.754% {
            transform: translate(33.591vw, 63.754vh) scale(0.022);
        }
        to {
            transform: translate(32.10235vw, 100vh) scale(0.022);
        }
    }
    .snow:nth-child(156) {
        opacity: 0.4481;
        transform: translate(79.4772vw, -10px) scale(0.6453);
        animation: fall-156 14s -28s linear infinite;
    }
    @keyframes fall-156 {
        75.826% {
            transform: translate(88.735vw, 75.826vh) scale(0.6453);
        }
        to {
            transform: translate(84.1061vw, 100vh) scale(0.6453);
        }
    }
    .snow:nth-child(157) {
        opacity: 0.0482;
        transform: translate(84.9804vw, -10px) scale(0.6402);
        animation: fall-157 18s -12s linear infinite;
    }
    @keyframes fall-157 {
        52.908% {
            transform: translate(80.7404vw, 52.908vh) scale(0.6402);
        }
        to {
            transform: translate(82.8604vw, 100vh) scale(0.6402);
        }
    }
    .snow:nth-child(158) {
        opacity: 0.6376;
        transform: translate(74.2551vw, -10px) scale(0.6152);
        animation: fall-158 24s -25s linear infinite;
    }
    @keyframes fall-158 {
        51.451% {
            transform: translate(72.8483vw, 51.451vh) scale(0.6152);
        }
        to {
            transform: translate(73.5517vw, 100vh) scale(0.6152);
        }
    }
    .snow:nth-child(159) {
        opacity: 0.4383;
        transform: translate(88.706vw, -10px) scale(0.3086);
        animation: fall-159 27s -9s linear infinite;
    }
    @keyframes fall-159 {
        45.074% {
            transform: translate(97.5531vw, 45.074vh) scale(0.3086);
        }
        to {
            transform: translate(93.12955vw, 100vh) scale(0.3086);
        }
    }
    .snow:nth-child(160) {
        opacity: 0.2851;
        transform: translate(95.9829vw, -10px) scale(0.5995);
        animation: fall-160 11s -7s linear infinite;
    }
    @keyframes fall-160 {
        63.993% {
            transform: translate(97.3007vw, 63.993vh) scale(0.5995);
        }
        to {
            transform: translate(96.6418vw, 100vh) scale(0.5995);
        }
    }
    .snow:nth-child(161) {
        opacity: 0.9841;
        transform: translate(50.9726vw, -10px) scale(0.6099);
        animation: fall-161 24s -6s linear infinite;
    }
    @keyframes fall-161 {
        68.557% {
            transform: translate(56.0154vw, 68.557vh) scale(0.6099);
        }
        to {
            transform: translate(53.494vw, 100vh) scale(0.6099);
        }
    }
    .snow:nth-child(162) {
        opacity: 0.4784;
        transform: translate(37.0379vw, -10px) scale(0.7353);
        animation: fall-162 15s -29s linear infinite;
    }
    @keyframes fall-162 {
        60.738% {
            transform: translate(28.071vw, 60.738vh) scale(0.7353);
        }
        to {
            transform: translate(32.55445vw, 100vh) scale(0.7353);
        }
    }
    .snow:nth-child(163) {
        opacity: 0.3575;
        transform: translate(42.8581vw, -10px) scale(0.4829);
        animation: fall-163 24s -7s linear infinite;
    }
    @keyframes fall-163 {
        69.713% {
            transform: translate(50.496vw, 69.713vh) scale(0.4829);
        }
        to {
            transform: translate(46.67705vw, 100vh) scale(0.4829);
        }
    }
    .snow:nth-child(164) {
        opacity: 0.1623;
        transform: translate(8.8955vw, -10px) scale(0.6662);
        animation: fall-164 16s -16s linear infinite;
    }
    @keyframes fall-164 {
        59.452% {
            transform: translate(1.9355vw, 59.452vh) scale(0.6662);
        }
        to {
            transform: translate(5.4155vw, 100vh) scale(0.6662);
        }
    }
    .snow:nth-child(165) {
        opacity: 0.971;
        transform: translate(6.5879vw, -10px) scale(0.4231);
        animation: fall-165 14s -18s linear infinite;
    }
    @keyframes fall-165 {
        56.653% {
            transform: translate(16.5338vw, 56.653vh) scale(0.4231);
        }
        to {
            transform: translate(11.56085vw, 100vh) scale(0.4231);
        }
    }
    .snow:nth-child(166) {
        opacity: 0.9326;
        transform: translate(2.4884vw, -10px) scale(0.2603);
        animation: fall-166 15s -5s linear infinite;
    }
    @keyframes fall-166 {
        78.227% {
            transform: translate(4.0873vw, 78.227vh) scale(0.2603);
        }
        to {
            transform: translate(3.28785vw, 100vh) scale(0.2603);
        }
    }
    .snow:nth-child(167) {
        opacity: 0.5073;
        transform: translate(85.2167vw, -10px) scale(0.1701);
        animation: fall-167 25s -29s linear infinite;
    }
    @keyframes fall-167 {
        68.896% {
            transform: translate(92.4014vw, 68.896vh) scale(0.1701);
        }
        to {
            transform: translate(88.80905vw, 100vh) scale(0.1701);
        }
    }
    .snow:nth-child(168) {
        opacity: 0.2503;
        transform: translate(73.5325vw, -10px) scale(0.6911);
        animation: fall-168 22s -19s linear infinite;
    }
    @keyframes fall-168 {
        48.409% {
            transform: translate(78.6915vw, 48.409vh) scale(0.6911);
        }
        to {
            transform: translate(76.112vw, 100vh) scale(0.6911);
        }
    }
    .snow:nth-child(169) {
        opacity: 0.8347;
        transform: translate(42.5161vw, -10px) scale(0.2028);
        animation: fall-169 28s -24s linear infinite;
    }
    @keyframes fall-169 {
        53.217% {
            transform: translate(33.7946vw, 53.217vh) scale(0.2028);
        }
        to {
            transform: translate(38.15535vw, 100vh) scale(0.2028);
        }
    }
    .snow:nth-child(170) {
        opacity: 0.7771;
        transform: translate(14.1047vw, -10px) scale(0.1819);
        animation: fall-170 10s -14s linear infinite;
    }
    @keyframes fall-170 {
        68.235% {
            transform: translate(4.7033vw, 68.235vh) scale(0.1819);
        }
        to {
            transform: translate(9.404vw, 100vh) scale(0.1819);
        }
    }
    .snow:nth-child(171) {
        opacity: 0.9947;
        transform: translate(7.3437vw, -10px) scale(0.7557);
        animation: fall-171 21s -2s linear infinite;
    }
    @keyframes fall-171 {
        30.831% {
            transform: translate(-0.9975vw, 30.831vh) scale(0.7557);
        }
        to {
            transform: translate(3.1731vw, 100vh) scale(0.7557);
        }
    }
    .snow:nth-child(172) {
        opacity: 0.6562;
        transform: translate(4.7606vw, -10px) scale(0.4127);
        animation: fall-172 18s -3s linear infinite;
    }
    @keyframes fall-172 {
        72.05% {
            transform: translate(12.2492vw, 72.05vh) scale(0.4127);
        }
        to {
            transform: translate(8.5049vw, 100vh) scale(0.4127);
        }
    }
    .snow:nth-child(173) {
        opacity: 0.7357;
        transform: translate(87.562vw, -10px) scale(0.6981);
        animation: fall-173 14s -28s linear infinite;
    }
    @keyframes fall-173 {
        71.092% {
            transform: translate(83.088vw, 71.092vh) scale(0.6981);
        }
        to {
            transform: translate(85.325vw, 100vh) scale(0.6981);
        }
    }
    .snow:nth-child(174) {
        opacity: 0.5188;
        transform: translate(50.304vw, -10px) scale(0.8506);
        animation: fall-174 27s -24s linear infinite;
    }
    @keyframes fall-174 {
        54.217% {
            transform: translate(58.8836vw, 54.217vh) scale(0.8506);
        }
        to {
            transform: translate(54.5938vw, 100vh) scale(0.8506);
        }
    }
    .snow:nth-child(175) {
        opacity: 0.435;
        transform: translate(75.0398vw, -10px) scale(0.4604);
        animation: fall-175 29s -9s linear infinite;
    }
    @keyframes fall-175 {
        58.894% {
            transform: translate(81.1598vw, 58.894vh) scale(0.4604);
        }
        to {
            transform: translate(78.0998vw, 100vh) scale(0.4604);
        }
    }
    .snow:nth-child(176) {
        opacity: 0.5414;
        transform: translate(46.4115vw, -10px) scale(0.0919);
        animation: fall-176 26s -12s linear infinite;
    }
    @keyframes fall-176 {
        43.459% {
            transform: translate(41.547vw, 43.459vh) scale(0.0919);
        }
        to {
            transform: translate(43.97925vw, 100vh) scale(0.0919);
        }
    }
    .snow:nth-child(177) {
        opacity: 0.4586;
        transform: translate(34.6483vw, -10px) scale(0.552);
        animation: fall-177 14s -25s linear infinite;
    }
    @keyframes fall-177 {
        54.167% {
            transform: translate(41.9351vw, 54.167vh) scale(0.552);
        }
        to {
            transform: translate(38.2917vw, 100vh) scale(0.552);
        }
    }
    .snow:nth-child(178) {
        opacity: 0.7338;
        transform: translate(53.3055vw, -10px) scale(0.1916);
        animation: fall-178 18s -27s linear infinite;
    }
    @keyframes fall-178 {
        44.763% {
            transform: translate(46.1506vw, 44.763vh) scale(0.1916);
        }
        to {
            transform: translate(49.72805vw, 100vh) scale(0.1916);
        }
    }
    .snow:nth-child(179) {
        opacity: 0.6842;
        transform: translate(29.9935vw, -10px) scale(0.2848);
        animation: fall-179 18s -15s linear infinite;
    }
    @keyframes fall-179 {
        37.7% {
            transform: translate(36.2227vw, 37.7vh) scale(0.2848);
        }
        to {
            transform: translate(33.1081vw, 100vh) scale(0.2848);
        }
    }
    .snow:nth-child(180) {
        opacity: 0.396;
        transform: translate(43.3684vw, -10px) scale(0.1987);
        animation: fall-180 26s -25s linear infinite;
    }
    @keyframes fall-180 {
        47.548% {
            transform: translate(48.4351vw, 47.548vh) scale(0.1987);
        }
        to {
            transform: translate(45.90175vw, 100vh) scale(0.1987);
        }
    }
    .snow:nth-child(181) {
        opacity: 0.2074;
        transform: translate(42.7834vw, -10px) scale(0.527);
        animation: fall-181 18s -25s linear infinite;
    }
    @keyframes fall-181 {
        32.026% {
            transform: translate(32.9939vw, 32.026vh) scale(0.527);
        }
        to {
            transform: translate(37.88865vw, 100vh) scale(0.527);
        }
    }
    .snow:nth-child(182) {
        opacity: 0.3403;
        transform: translate(48.7988vw, -10px) scale(0.2908);
        animation: fall-182 11s -4s linear infinite;
    }
    @keyframes fall-182 {
        30.347% {
            transform: translate(45.4228vw, 30.347vh) scale(0.2908);
        }
        to {
            transform: translate(47.1108vw, 100vh) scale(0.2908);
        }
    }
    .snow:nth-child(183) {
        opacity: 0.3763;
        transform: translate(48.6705vw, -10px) scale(0.7604);
        animation: fall-183 29s -18s linear infinite;
    }
    @keyframes fall-183 {
        45.408% {
            transform: translate(41.7623vw, 45.408vh) scale(0.7604);
        }
        to {
            transform: translate(45.2164vw, 100vh) scale(0.7604);
        }
    }
    .snow:nth-child(184) {
        opacity: 0.904;
        transform: translate(56.8084vw, -10px) scale(0.9901);
        animation: fall-184 26s -24s linear infinite;
    }
    @keyframes fall-184 {
        42.448% {
            transform: translate(51.569vw, 42.448vh) scale(0.9901);
        }
        to {
            transform: translate(54.1887vw, 100vh) scale(0.9901);
        }
    }
    .snow:nth-child(185) {
        opacity: 0.8468;
        transform: translate(29.1677vw, -10px) scale(0.3176);
        animation: fall-185 28s -18s linear infinite;
    }
    @keyframes fall-185 {
        48.105% {
            transform: translate(19.3654vw, 48.105vh) scale(0.3176);
        }
        to {
            transform: translate(24.26655vw, 100vh) scale(0.3176);
        }
    }
    .snow:nth-child(186) {
        opacity: 0.1915;
        transform: translate(63.9476vw, -10px) scale(0.021);
        animation: fall-186 20s -29s linear infinite;
    }
    @keyframes fall-186 {
        32.512% {
            transform: translate(55.8894vw, 32.512vh) scale(0.021);
        }
        to {
            transform: translate(59.9185vw, 100vh) scale(0.021);
        }
    }
    .snow:nth-child(187) {
        opacity: 0.4101;
        transform: translate(59.7578vw, -10px) scale(0.655);
        animation: fall-187 10s -25s linear infinite;
    }
    @keyframes fall-187 {
        63.577% {
            transform: translate(54.4275vw, 63.577vh) scale(0.655);
        }
        to {
            transform: translate(57.09265vw, 100vh) scale(0.655);
        }
    }
    .snow:nth-child(188) {
        opacity: 0.8983;
        transform: translate(89.67vw, -10px) scale(0.9523);
        animation: fall-188 24s -10s linear infinite;
    }
    @keyframes fall-188 {
        77.859% {
            transform: translate(83.6379vw, 77.859vh) scale(0.9523);
        }
        to {
            transform: translate(86.65395vw, 100vh) scale(0.9523);
        }
    }
    .snow:nth-child(189) {
        opacity: 0.5379;
        transform: translate(59.6637vw, -10px) scale(0.3651);
        animation: fall-189 29s -17s linear infinite;
    }
    @keyframes fall-189 {
        44.353% {
            transform: translate(54.6339vw, 44.353vh) scale(0.3651);
        }
        to {
            transform: translate(57.1488vw, 100vh) scale(0.3651);
        }
    }
    .snow:nth-child(190) {
        opacity: 0.5891;
        transform: translate(14.583vw, -10px) scale(0.3259);
        animation: fall-190 18s -30s linear infinite;
    }
    @keyframes fall-190 {
        38.921% {
            transform: translate(12.4371vw, 38.921vh) scale(0.3259);
        }
        to {
            transform: translate(13.51005vw, 100vh) scale(0.3259);
        }
    }
    .snow:nth-child(191) {
        opacity: 0.3161;
        transform: translate(70.355vw, -10px) scale(0.3461);
        animation: fall-191 16s -14s linear infinite;
    }
    @keyframes fall-191 {
        49.324% {
            transform: translate(74.7237vw, 49.324vh) scale(0.3461);
        }
        to {
            transform: translate(72.53935vw, 100vh) scale(0.3461);
        }
    }
    .snow:nth-child(192) {
        opacity: 0.2192;
        transform: translate(70.7605vw, -10px) scale(0.9976);
        animation: fall-192 12s -4s linear infinite;
    }
    @keyframes fall-192 {
        66.661% {
            transform: translate(69.3078vw, 66.661vh) scale(0.9976);
        }
        to {
            transform: translate(70.03415vw, 100vh) scale(0.9976);
        }
    }
    .snow:nth-child(193) {
        opacity: 0.1179;
        transform: translate(48.8558vw, -10px) scale(0.8292);
        animation: fall-193 29s -22s linear infinite;
    }
    @keyframes fall-193 {
        48.58% {
            transform: translate(54.1618vw, 48.58vh) scale(0.8292);
        }
        to {
            transform: translate(51.5088vw, 100vh) scale(0.8292);
        }
    }
    .snow:nth-child(194) {
        opacity: 0.5329;
        transform: translate(7.7991vw, -10px) scale(0.7166);
        animation: fall-194 15s -27s linear infinite;
    }
    @keyframes fall-194 {
        70.857% {
            transform: translate(4.6031vw, 70.857vh) scale(0.7166);
        }
        to {
            transform: translate(6.2011vw, 100vh) scale(0.7166);
        }
    }
    .snow:nth-child(195) {
        opacity: 0.4136;
        transform: translate(82.2589vw, -10px) scale(0.1731);
        animation: fall-195 22s -1s linear infinite;
    }
    @keyframes fall-195 {
        43.956% {
            transform: translate(72.8412vw, 43.956vh) scale(0.1731);
        }
        to {
            transform: translate(77.55005vw, 100vh) scale(0.1731);
        }
    }
    .snow:nth-child(196) {
        opacity: 0.4544;
        transform: translate(30.9315vw, -10px) scale(0.0775);
        animation: fall-196 19s -12s linear infinite;
    }
    @keyframes fall-196 {
        45.113% {
            transform: translate(32.6889vw, 45.113vh) scale(0.0775);
        }
        to {
            transform: translate(31.8102vw, 100vh) scale(0.0775);
        }
    }
    .snow:nth-child(197) {
        opacity: 0.1901;
        transform: translate(0.4369vw, -10px) scale(0.9031);
        animation: fall-197 29s -5s linear infinite;
    }
    @keyframes fall-197 {
        39.963% {
            transform: translate(8.9948vw, 39.963vh) scale(0.9031);
        }
        to {
            transform: translate(4.71585vw, 100vh) scale(0.9031);
        }
    }
    .snow:nth-child(198) {
        opacity: 0.4242;
        transform: translate(87.9228vw, -10px) scale(0.5857);
        animation: fall-198 10s -17s linear infinite;
    }
    @keyframes fall-198 {
        73.696% {
            transform: translate(94.15vw, 73.696vh) scale(0.5857);
        }
        to {
            transform: translate(91.0364vw, 100vh) scale(0.5857);
        }
    }
    .snow:nth-child(199) {
        opacity: 0.6696;
        transform: translate(37.6952vw, -10px) scale(0.321);
        animation: fall-199 14s -30s linear infinite;
    }
    @keyframes fall-199 {
        45.728% {
            transform: translate(39.2894vw, 45.728vh) scale(0.321);
        }
        to {
            transform: translate(38.4923vw, 100vh) scale(0.321);
        }
    }
    .snow:nth-child(200) {
        opacity: 0.8186;
        transform: translate(28.3561vw, -10px) scale(0.2892);
        animation: fall-200 13s -27s linear infinite;
    }
    @keyframes fall-200 {
        46.582% {
            transform: translate(30.0983vw, 46.582vh) scale(0.2892);
        }
        to {
            transform: translate(29.2272vw, 100vh) scale(0.2892);
        }
    }

    .profile-nav, .profile-info{
        margin-top:30px;
    }

    .profile-nav .user-heading {
        background: #4a6274;
        color: #fff;
        border-radius: 4px 4px 0 0;
        -webkit-border-radius: 4px 4px 0 0;
        padding: 30px;
        text-align: center;
    }

    .profile-nav .user-heading.round a  {
        border-radius: 50%;
        -webkit-border-radius: 50%;
        border: 10px solid rgba(255,255,255,0.3);
        display: inline-block;
    }

    .profile-nav .user-heading a img {
        width: 112px;
        height: 112px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
    }

    .profile-nav .user-heading h1 {
        font-size: 22px;
        font-weight: 300;
        margin-bottom: 5px;
    }

    .profile-nav .user-heading p {
        font-size: 12px;
    }

    .profile-nav ul {
        margin-top: 1px;
    }

    .profile-nav ul > li {
        border-bottom: 1px solid #ebeae6;
        margin-top: 0;
        line-height: 30px;
    }

    .profile-nav ul > li:last-child {
        border-bottom: none;
    }

    .profile-nav ul > li > a {
        border-radius: 0;
        -webkit-border-radius: 0;
        color: #89817f;
        border-left: 5px solid #fff;
    }

    .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active  a {
        background: #f8f7f5 !important;
        border-left: 5px solid #4a6274;
        color: #89817f !important;
    }

    .profile-nav ul > li:last-child > a:last-child {
        border-radius: 0 0 4px 4px;
        -webkit-border-radius: 0 0 4px 4px;
    }

    .profile-nav ul > li > a > i{
        font-size: 16px;
        padding-right: 10px;
        color: #bcb3aa;
    }

    .r-activity {
        margin: 6px 0 0;
        font-size: 12px;
    }


    .p-text-area, .p-text-area:focus {
        border: none;
        font-weight: 300;
        box-shadow: none;
        color: #c3c3c3;
        font-size: 16px;
    }

    .profile-info .panel-footer {
        background-color:#f8f7f5 ;
        border-top: 1px solid #e7ebee;
    }

    .profile-info .panel-footer ul li a {
        color: #7a7a7a;
    }

    .bio-graph-heading {
        background: #f8d0c1;
        color: #4a6274;
        text-align: center;
        font-style: italic;
        padding: 40px 110px;
        border-radius: 4px 4px 0 0;
        -webkit-border-radius: 8px 8px 0 0;
        font-size: 16px;
        font-weight: 300;
    }

    .bio-graph-info {
        color: #89817e;
    }

    .bio-graph-info h1 {
        font-size: 22px;
        font-weight: 300;
        margin: 0 0 20px;
    }

    .bio-row {
        width: 50%;
        float: left;
        margin-bottom: 10px;
        padding:0 15px;
    }

    .bio-row p span {
        width: 100px;
        display: inline-block;
    }

    .bio-chart, .bio-desk {
        float: left;
    }

    .bio-chart {
        width: 40%;
    }

    .bio-desk {
        width: 60%;
    }

    .bio-desk h4 {
        font-size: 15px;
        font-weight:400;
    }

    .bio-desk h4.terques {
        color: #4CC5CD;
    }

    .bio-desk h4.red {
        color: #e26b7f;
    }

    .bio-desk h4.green {
        color: #97be4b;
    }

    .bio-desk h4.purple {
        color: #caa3da;
    }

    .file-pos {
        margin: 6px 0 10px 0;
    }

    .profile-activity h5 {
        font-weight: 300;
        margin-top: 0;
        color: #c3c3c3;
    }

    .summary-head {
        background: #ee7272;
        color: #fff;
        text-align: center;
        border-bottom: 1px solid #ee7272;
    }

    .summary-head h4 {
        font-weight: 300;
        text-transform: uppercase;
        margin-bottom: 5px;
    }

    .summary-head p {
        color: rgba(255,255,255,0.6);
    }

    ul.summary-list {
        display: inline-block;
        padding-left:0 ;
        width: 100%;
        margin-bottom: 0;
    }

    ul.summary-list > li {
        display: inline-block;
        width: 19.5%;
        text-align: center;
    }

    ul.summary-list > li > a > i {
        display:block;
        font-size: 18px;
        padding-bottom: 5px;
    }

    ul.summary-list > li > a {
        padding: 10px 0;
        display: inline-block;
        color: #818181;
    }

    ul.summary-list > li  {
        border-right: 1px solid #eaeaea;
    }

    ul.summary-list > li:last-child  {
        border-right: none;
    }

    .activity {
        width: 100%;
        float: left;
        margin-bottom: 10px;
    }

    .activity.alt {
        width: 100%;
        float: right;
        margin-bottom: 10px;
    }

    .activity span {
        float: left;
    }

    .activity.alt span {
        float: right;
    }
    .activity span, .activity.alt span {
        width: 45px;
        height: 45px;
        line-height: 45px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        background: #eee;
        text-align: center;
        color: #fff;
        font-size: 16px;
    }

    .activity.terques span {
        background: #8dd7d6;
    }

    .activity.terques h4 {
        color: #8dd7d6;
    }
    .activity.purple span {
        background: #b984dc;
    }

    .activity.purple h4 {
        color: #b984dc;
    }
    .activity.blue span {
        background: #90b4e6;
    }

    .activity.blue h4 {
        color: #90b4e6;
    }
    .activity.green span {
        background: #aec785;
    }

    .activity.green h4 {
        color: #aec785;
    }

    .activity h4 {
        margin-top:0 ;
        font-size: 16px;
    }

    .activity p {
        margin-bottom: 0;
        font-size: 13px;
    }

    .activity .activity-desk i, .activity.alt .activity-desk i {
        float: left;
        font-size: 18px;
        margin-right: 10px;
        color: #bebebe;
    }

    .activity .activity-desk {
        margin-left: 70px;
        position: relative;
    }

    .activity.alt .activity-desk {
        margin-right: 70px;
        position: relative;
    }

    .activity.alt .activity-desk .panel {
        float: right;
        position: relative;
    }

    .activity-desk .panel {
        background: #F4F4F4 ;
        display: inline-block;
    }


    .activity .activity-desk .arrow {
        border-right: 8px solid #F4F4F4 !important;
    }
    .activity .activity-desk .arrow {
        border-bottom: 8px solid transparent;
        border-top: 8px solid transparent;
        display: block;
        height: 0;
        left: -7px;
        position: absolute;
        top: 13px;
        width: 0;
    }

    .activity-desk .arrow-alt {
        border-left: 8px solid #F4F4F4 !important;
    }

    .activity-desk .arrow-alt {
        border-bottom: 8px solid transparent;
        border-top: 8px solid transparent;
        display: block;
        height: 0;
        right: -7px;
        position: absolute;
        top: 13px;
        width: 0;
    }

    .activity-desk .album {
        display: inline-block;
        margin-top: 10px;
    }

    .activity-desk .album a{
        margin-right: 10px;
    }

    .activity-desk .album a:last-child{
        margin-right: 0px;
    }




    /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */

    .logo {
        padding-left: 50px;
        font-size: 25px;
        display: flex;
        justify-content: flex-end;
        align-items: center;

        text-decoration: none;
    }
    .logo a {
        color: #666;
    }
    .logo a:hover {
        color: white;
        transition: 0.5s;
    }

    .header {
        font-size: 15px;
        text-decoration: none;
    }
    .header_container {
        width: auto;
        height: 52px;
        background-color: black;
        display: grid;
        grid-template-columns: 30% 15% 55%;
    }
    @media (max-width: 1100px) {
        .header_container_empty {
            display: none;
        }
        .header_container {
            display: grid;
            grid-template-columns: 25% 75%;
        }
    }
    .header_container > div.header_logo {
    }
    .header_logo_image {
        width: 186px;
        height: 62px;
        padding-left: 35%;
    }

    .header_container > div.header_container_empty {
    }
    .header_container > div.header_nav {
        padding-top: 15px;
        text-align: center;
        vertical-align: middle;
    }
    .header_inner_ul {
        vertical-align: middle;

        margin: 0; /* Обнуляем значение отступов */
        padding: 4px; /* Значение полей */
    }

    .header_inner_ul a {
        color: #666;
        text-decoration: none;
    }
    .header_inner_ul a:hover {
        color: white;
        transition: 0.5s;
    }

    .header_inner_ul li {
        vertical-align: middle;
        display: inline; /* Отображать как строчный элемент */
        margin-right: 20px; /* Отступ слева */
        color: #666;
        padding: 3px; /* Поля вокруг текста */
    }


</style>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">




<nav class="header">
    <div class="header_container">
        <div class="logo">
            <img src="views/img/logo_v2.jpg" alt="logo+Hinterland" href="index.html"srcset="">
            <span ><a href="http://localhost:8080" class="HINTERLAND">HINTERLAND</a></span>
        </div>
        <div class="header_container_empty">

        </div>
        <div class="header_nav">
            <ul class="header_inner_ul">
                <li >
                    <a onclick="location.href='/movies'">MOVIES</a>

                </li>



                <li>
                    <a href="https://www.facebook.com/"  target="_blank" >COMMUNITY</a>
                </li>
                <li>
                    <a href="shop-right-sidebar.jsp"   >SHOP</a>
                </li>
                <li>
                    <a href="contact.jsp" target="_blank"  >SUPPORT</a>
                </li>
                <%

                    String name_user  = (String)session.getAttribute("name");

                    if(name_user != null ){

                        if(name_user.equals("admin")){

                            out.print(
                                    "<li>\n" +
                                            "  Hello, "+name_user+" Welcome to <a onclick=\"location.href='/admin'\"  >Admin Page</a>" +
                                            " </li>\n"+

                                            "<li>\n" +
                                            "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                                            " </li>\n"

                            );

                        }
                        if(!name_user.equals("admin")){

                            out.print(
                                    "<li>\n" +
                                            "  Hello, "+name_user+" Welcome to <a onclick=\"location.href='/userProfile'\"  >Profile</a>\n" +
                                            " </li>\n"+

                                            "<li>\n" +
                                            "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                                            " </li>\n"

                            );

                        }



                        //                                      out.print("Hello, "+name_user+" Welcome to Profile");


                    }
                    if(name_user == null ) {

                        out.print(
                                "<li>\n" +
                                        "  <a onclick=\"location.href='/login'\">LOGIN</a>\n" +
                                        " </li>\n" +

                                        " <li>\n" +
                                        "     <a onclick=\"location.href='/registration'\">REGISTER</a>\n" +
                                        "</li>"
                        );


                    }





                %>
            </ul>
        </div>


    </div>

</nav>

<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>


<div class="container bootstrap snippets bootdey">

    <div class="row">
        <div class="profile-nav col-md-3">
            <div class="panel">
                <div class="user-heading round">
                    <a href="#">
                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                    </a>
                    <h1>
                        <%

                        out.print(name_user);

                    %>
                    </h1>
                    <p>deydey@theEmail.com</p>
                </div>

                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#"> <i class="fa fa-user"></i> Profile</a></li>
                    <li><a onclick="location.href='/movieBuy'"> <i class="fa fa-edit"></i> Buy Page</a></li>
                </ul>
            </div>
        </div>
        <div class="profile-info col-md-9">

            <div class="panel">
                <div class="bio-graph-heading">
                    Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
                </div>
                <div class="panel-body bio-graph-info">
                    <h1>About me</h1>
                    <div class="row">
                        <div class="bio-row">
                            <p><span>Nickname </span>:
                                <%

                                    out.print(name_user);

                                %>
                            </p>
                        </div>

                    </div>
                </div>
            </div>
            <div>
                <div class="row">





                    <div class="col-md-6">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="bio-chart">
                                    <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas>
                                        <%

                                            DB_ManagerDAO db_managerDAO = new DB_ManagerDAO();






                                        out.print("<input class=\"knob\" data-width=\"100\" data-height=\"100\" data-displayprevious=\"true\" data-thickness=\".2\" value=\"" + 99 + "\" data-fgcolor=\"#e06b7d\" data-bgcolor=\"#e8e8e8\" style=\"width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(224, 107, 125); padding: 0px; -webkit-appearance: none; background: none;\"> ");


                                        %>
                                    </div>
                                </div>
                                <div class="bio-desk">
                                    <h4 class="red">Envato Website</h4>
                                    <p>Started : 15 July</p>
                                    <p>Deadline : 15 August</p>
                                </div>
                            </div>
                        </div>
                    </div>






                </div>
            </div>
        </div>
    </div>
</div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>
<div class="snow"></div>




<script type="text/javascript">

</script>
</body>
</html>