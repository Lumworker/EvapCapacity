<%@ Page Title="EvapCapacity Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EvapCapacity_Calculator.aspx.cs" Inherits="EvapCapacity.EvapCapacity_Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .section {
            margin-top: 20px;
        }

        .border {
            border: 2px solid #2e6da4;
            padding: 10px;
            border-radius: 10px;
        }

        .center {
            text-align: center;
        }


        .title-text {
            float: left;
            margin-left: 1rem;
            margin-top: 1rem;
            font-size: 15px;
        }

        .max-wide {
            max-width: 100%;
        }

        .panel {
            border: 0px;
        }

        .bg-blue {
            background-color: #272f3c;
            padding-left: 2px;
        }

        .bg-gray {
            background-color: #d9dee2;
        }

        .text-red {
            color: red;
        }

        .text-white {
            color: whitesmoke;
        }

        .no-padding {
            padding-right: 0 !important;
            padding-left: 0 !important;
        }

        .margin-top {
            margin-top: 3px;
        }

        .height-block {
            height: 100px;
        }

        .menu {
            height: 60px;
            background-color: whitesmoke;
            cursor: pointer;
            color: black;
        }

            .menu:hover {
                background-color: #fa967b;
                color: ghostwhite;
            }

        .menu-selected {
            height: 60px;
            background-color: #f55541;
            cursor: pointer;
            color: ghostwhite;
        }

            .menu-selected:hover {
                height: 60px;
                background-color: #f55541;
                cursor: pointer;
                color: ghostwhite;
            }

        .left-block {
            background-clip: content-box;
            padding-right: 0.5px;
            padding-left: 0px;
        }

        .right-block {
            background-clip: content-box;
            padding-left: 0.5px;
            padding-right: 0px;
        }

        .btn-circle {
            width: 30px;
            height: 30px;
            text-align: center;
            padding: 6px 0;
            font-size: 12px;
            line-height: 1.428571429;
            border-radius: 15px;
        }


        .panel-group .panel {
            margin-bottom: -20px;
            border-radius: 4px;
        }


        .SetDropdown {
            text-align-last: center;
            border: 0px;
            box-shadow: none;
            background-color: #d9dee2;
            color: black;
            font-size: 18px;
        }

        select:focus > option:checked {
            background: #272f3c !important;
            color:whitesmoke;
        }




        /*.col-centered {
            float: none;
            margin: 0 auto;
        }
        /*.row-no-padding > [class*="col-"] {
            padding-left: 1.8px !important;
            padding-right: 1.8px !important;
        }

        @media(max-width:767px) {
            body {
                padding-top: 0px;
            }
        }*/
    </style>

    <body style="background-color: #56baed;"></body>


    <div class="row" style="display: none">
        <div class="col-md-12 col-xs-12">
            <div class="row form-group">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Correction factor :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textCorrection_factor" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
        </div>
    </div>




    <div class="row">
        <div class="col-md-12">
            <div class="col-md-2"></div>
            <%-- End Master Col 2 --%>
            <div class="col-md-8" style="border-style: solid; border-width: 1px; padding: 0px;">
                <div class="panel-group">
                    <div class="panel">
                        <div class="panel-heading bg-blue">
                            <h4 class="text-white" style="margin-left: 5px;">Bleeding Application</h4>
                        </div>
                        <div class="panel-body" style="padding-top: 0px; padding-bottom: 0px">
                            <div class="row" style="min-height: 700px; background-color: #43596d;">

                                <div class="row" style="margin-bottom:5px">
                                    <div class="col-md-12">
                                        <div class="col-md-12 center no-padding">
                                            <a class="col-md-4 col-xs-4 bg-gray menu menu-selected" style="background-clip: content-box;padding-right: 1px;padding-left: 0px;">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <label style="font-size: 18px; margin-top: 1em">Unit Info </label>
                                                    </div>
                                                </div>
                                            </a>
                                            <a class="col-md-4 col-xs-4 bg-gray menu" style="background-clip: content-box;padding-left: 2px;padding-right: 2px;">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <label style="font-size: 18px; margin-top: 1em">Bleed-off</label>
                                                    </div>
                                                </div>
                                            </a>
                                            <a class="col-md-4 col-xs-4 bg-gray right-block menu"  style="background-clip: content-box;padding-left: 1px;padding-right: 0px;">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <label style="font-size: 18px; margin-top: 1em; text-align: center;">Expense</label>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <%--End Button Menu--%>
                                
                                <div id="menu1">
                                    <div class="col-md-12">
                                        <div class="row center  margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">Series </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 ">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backStc" data-type="textSeries" type="button"><</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <select class="form-control SetDropdown" id="textSeries">
                                                                        <option value="ECS">ECS</option>
                                                                        <option value="ECF">ECF</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button id="" class="btn btn-warning btn-circle nextStc" data-type="textSeries" type="button">></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--row 1-1--%>
                                                <div class="col-md-6 col-xs-6 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text ">Model </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 ">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backStc" data-type="textModel" type="button"><</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <select class="form-control SetDropdown" id="textModel">
                                                                        <option value="1000">1000</option>
                                                                        <option value="1250">1250</option>
                                                                        <option value="1550">1550</option>
                                                                        <option value="1700">1700</option>
                                                                        <option value="2000">2000</option>
                                                                        <option value="2350">2300</option>
                                                                        <option value="2800">2800</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button id="" class="btn btn-warning btn-circle nextStc" data-type="textModel" type="button">></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 1-2--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-12 bg-gray  height-block no-padding">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">Refrigerant</label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12 ">
                                                                <div class="col-md-1 col-xs-1 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backStc" data-type="textRefrigerant" type="button"><</button>
                                                                </div>
                                                                <div class="col-md-10 col-xs-10">
                                                                    <select class="form-control max-wide SetDropdown" id="textRefrigerant">
                                                                        <option value="R-717">R-717</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-1 col-xs-1 no-padding" style="float: right;">
                                                                    <button id="" class="btn btn-warning btn-circle nextStc" data-type="textRefrigerant" type="button">></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 1-3--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">Condensing Temperature (C)</label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backStc" data-type="textCondensing" type="button"><</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <select class="form-control max-wide SetDropdown" id="textCondensing">
                                                                        <option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <option value="31">31</option>
                                                                        <option value="32">32</option>
                                                                        <option value="33">33</option>
                                                                        <option value="34">34</option>
                                                                        <option value="35">35</option>
                                                                        <option value="36">36</option>
                                                                        <option value="37">37</option>
                                                                        <option value="38">38</option>
                                                                        <option value="39">39</option>
                                                                        <option value="40">40</option>
                                                                        <option value="41">41</option>
                                                                        <option value="42">42</option>
                                                                        <option value="43">43</option>
                                                                        <option value="44">44</option>
                                                                        <option value="45">45</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button id="" class="btn btn-warning btn-circle nextStc" data-type="textCondensing" type="button">></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-6 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">Wet bulb temperature (C) </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backStc" data-type="textWetBulb" type="button"><</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <select class="form-control max-wide SetDropdown" id="textWetBulb">
                                                                        <option value="10">10</option>
                                                                        <option value="12">12</option>
                                                                        <option value="14">14</option>
                                                                        <option value="16">16</option>
                                                                        <option value="17">17</option>
                                                                        <option value="18">18</option>
                                                                        <option value="19">19</option>
                                                                        <option value="20">20</option>
                                                                        <option value="21">21</option>
                                                                        <option value="22">22</option>
                                                                        <option value="23">23</option>
                                                                        <option value="24">24</option>
                                                                        <option value="25">25</option>
                                                                        <option value="26">26</option>
                                                                        <option value="27">27</option>
                                                                        <option value="28">28</option>
                                                                        <option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <%--10,12,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30--%>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button id="" class="btn btn-warning btn-circle nextStc" data-type="textWetBulb" type="button">></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 1-4--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-12 col-xs-12 bg-blue  height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text text-white">Actual capacity (kW)</label>
                                                        </div>
                                                        <div class="row">
                                                            <label class="text-white" id="textActual_capacity" style="font-size: 18px">763 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 1-5--%>
                                    </div>
                                </div>
                                <%--End Menu 1--%>
                                <div id="menu2" style="display: none">
                                    <div class="col-md-12">
                                        <div class="row center bg-gray margin-top" style="height: 65px;">
                                            <h3 class="text-red">WATER MAKE-UP PROPERTY</h3>
                                        </div>
                                        <%--row 2-1--%>
                                        <div class="row center  margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">pH </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textpH" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textpH">7 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textpH" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-6 bg-blue right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="text-white title-text">Result</label>
                                                        </div>
                                                        <div class="row">
                                                            <label class="text-white" style="font-size: 18px">PASSED</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 2-2--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">Hardness as CaCO <span style="font-size: 13px">3</span> (ppm) </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textHardness" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textHardness">16 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textHardness" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-6 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">Alkalinity as CaCoO <span style="font-size: 13px">3</span> (ppm) </label>
                                                        </div>
                                                        
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textAlkalinity" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textAlkalinity">74 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textAlkalinity" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 2-3--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">Chlorides as CI (ppm)</label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textChlorides" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textChlorides">74 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textChlorides" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-6 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">Total dissolved solids (ppm) </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textTotal_dissolved" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textTotal_dissolved">187 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textTotal_dissolved" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 2-4--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">sulfates (ppm)</label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textsulfates" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textsulfates">10 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textsulfates" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-6 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">silica (ppm) </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textsilica" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textsilica">10 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textsilica" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 2-5--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-4 col-xs-4  bg-blue left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text text-white" style="font-size: 20px; padding-top: 13px">Timer (18.9L)</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4 bg-gray left-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">minute (s) </label>
                                                        </div>
                                                        <div class="row">
                                                            <label style="font-size: 18px">10 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-xs-4 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">second (s) </label>
                                                        </div>
                                                        <div class="row">
                                                            <label style="font-size: 18px">10 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--row 2-6--%>
                                        </div>
                                    </div>
                                </div>
                                <%--End Menu 2--%>

                                <div id="menu3" style="display: none">
                                    <div class="col-md-12">
                                        <div class="row center  margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-6 col-xs-6 bg-gray left-block height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text">Water Cost Per m3 (THB) </label>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textWaterCostPer_m3" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textWaterCostPer_m3">20 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textWaterCostPer_m3" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-6 bg-gray right-block height-block">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <label class="title-text">Operateing hour Per day (hour) </label>
                                                        </div>
                                                        
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: left;">
                                                                    <button class="btn btn-warning btn-circle backNum" data-type="textOperateingHourPer_day" type="button">-</button>
                                                                </div>
                                                                <div class="col-md-8 col-xs-8">
                                                                    <label style="font-size: 18px" id="textOperateingHourPer_day">8 </label>
                                                                </div>
                                                                <div class="col-md-2 col-xs-2 no-padding" style="float: right;">
                                                                    <button class="btn btn-warning btn-circle nextNum" data-type="textOperateingHourPer_day" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 3-1--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-12 col-xs-12 bg-blue  height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text text-white">Bleeding expense perhuse(THB)</label>
                                                        </div>
                                                        <div class="row">
                                                            <label class="text-white" style="font-size: 18px">12.34 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 3-2--%>
                                        <div class="row center margin-top">
                                            <div class="col-md-12 no-padding">
                                                <div class="col-md-12 col-xs-12 bg-blue  height-block">
                                                    <div class="col-md-12 ">
                                                        <div class="row">
                                                            <label class="title-text text-white">Bleeding expense day(THB)</label>
                                                        </div>
                                                        <div class="row">
                                                            <label class="text-white" style="font-size: 18px">98.2 </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--row 3-3--%>
                                    </div>
                                </div>
                                <%--End Menu 3--%>
                            </div>
                            <%-- End Page Menu --%>
                        </div>
                    </div>
                </div>
            </div>
            <%-- End Master Col 8 --%>
            <div class="col-md-2"></div>
        </div>
        <%-- End Master Col 2 --%>
    </div>


    <script type="text/javascript">

        $(document).ready(function () {
            var Obj_Excel = null;
            getData_Excel();
            //Load Excel
            get_Actualcapacity(Obj_Excel);
            //Cal ActualCopacity

            $('#textModel, #textCondensing, #textWetBulb').on('change', function () {
                get_Actualcapacity(Obj_Excel);
            });
            //Page 1 

            $(".menu").on("click", function () {
                $('.menu-selected').each(function () {
                    $(this).addClass("menu");
                    $(this).removeClass("menu-selected");
                });
                let btn_name = $(this).text().trim();
                //console.log(btn_name);
                if (btn_name == "Unit Info") {
                    $("#menu1").css("display", "");
                    $("#menu2").css("display", "none");
                    $("#menu3").css("display", "none");
                }
                else if (btn_name == "Bleed-off") {
                    $("#menu1").css("display", "none");
                    $("#menu2").css("display", "");
                    $("#menu3").css("display", "none");

                }
                else if (btn_name == "Expense") {
                    $("#menu1").css("display", "none");
                    $("#menu2").css("display", "none");
                    $("#menu3").css("display", "");
                }
                $(this).removeClass("menu");
                $(this).addClass("menu-selected");
            });
            //Click Menu


            $(".nextStc").click(function () {
                let type = $(this).attr("data-type");
                $('#' + type + ' > option:selected')
                    .prop("selected", false)
                    .next()
                    .prop("selected", true);
                if (type == "textCondensing" || type == "textModel" || type == "textWetBulb") {
                    get_Actualcapacity(Obj_Excel);
                }
            });

            $(".backStc").click(function () {
                let type = $(this).attr("data-type");
                $('#' + type + ' > option:selected')
                    .prop("selected", false)
                    .prev()
                    .prop("selected", true);
                if (type == "textCondensing" || type == "textModel" || type == "textWetBulb") {
                    get_Actualcapacity(Obj_Excel);
                }
            });

            $(".nextNum").click(function () {
                let ID = $(this).attr("data-type");
                let text = $('#' + ID).text();
                text = parseInt(text);
                text++;
                //console.log(text);
                $('#' + ID).text(text);
            });

            $(".backNum").click(function () {
                let ID = $(this).attr("data-type");
                let text = $('#' + ID).text();
                text = parseInt(text);
                text--;
                //console.log(text);
                $('#' + ID).text(text);
            });
            //button +,-,<,>

            function getData_Excel() {
                $.ajax({
                    type: 'post',
                    url: './getData_Excel.ashx',
                    async: false,
                    success: function (response) {
                        Obj_Excel = JSON.parse(response);
                        //console.log(Obj_Excel);
                    },
                    processData: false,
                    contentType: false,
                    error: function () {
                        alert("Whoops something went wrong!");
                    }
                });
            }

            function get_Actualcapacity(Obj_Excel) {
                let Correctionfactor = null;
                let Model = $("#textModel").val();
                console.log('Model :' + Model);
                //Actual capacity (kW)

                let Condensing = $("#textCondensing").val();
                let WetBulb = $("#textWetBulb").val();
                let Obj_Excel_size = Object.keys(Obj_Excel).length;
                //console.log('Obj_Excel :' + Obj_Excel_size);
                console.log('Condensing :' + Condensing);
                console.log('WetBulb :' + WetBulb);
                //Correctionfactor Value (Loop json)


                for (var i = 0; i < Obj_Excel_size; i++) {
                    if (Obj_Excel[i].Condensing == Condensing && Obj_Excel[i].WetBulb == WetBulb) {
                        Correctionfactor = Obj_Excel[i].Value;
                        $("#textCorrection_factor").val(Obj_Excel[i].Value)
                        console.log('Correction_factor(value) :' + Obj_Excel[i].Value);
                    }
                }

                let sum = Model / Correctionfactor
                sum = Math.floor(sum);
                console.log("Actual_capacity : " + sum)
                $("#textActual_capacity").text(sum);

            }

        });




    </script>
</asp:Content>
