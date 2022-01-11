<%@ Page Title="Calculation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculation.aspx.cs" Inherits="EvapCapacity.Calculation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .max-wide {
            max-width: 100%;
        }

        .datepicker {
            background: #333;
            border: 1px solid #555;
            color: #EEE;
        }

        .bg-color-white {
            background: #fff !important;
            border: 1px solid #555;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #fff;
        }

        .ui-datepicker {
            z-index: 2 !important;
        }

        .form-control {
            min-width: 100%;
        }

        .row-eq-height {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
        }

        input[type=checkbox] {
            -ms-transform: scale(2);
            -moz-transform: scale(2);
            -webkit-transform: scale(2);
            -o-transform: scale(2);
            transform: scale(2);
            padding: 10px;
        }

        .checkboxtext {
            font-size: 110%;
            display: inline;
        }

        @media only screen and (max-width: 990px) {
            .row-eq-height {
                display: -webkit-box;
                display: grid;
            }
        }

        .SelectLine, .SelectLine:focus {
            color: #f0ad4e;
            font-weight: bold;
        }

        .panel-body {
            padding: 8px;
        }

        @media only screen and (max-width: 800px) {
            .SetCSS_Model {
                padding: 0px;
            }
        }

        @media only screen and (min-width: 1000px) {
            #SetCSS_ScreenMD_col12ofModel {
                padding: 0px;
            }
        }
    </style>

    <div class="row"  style="display: none">
        <div class="col-md-12 col-xs-12">
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Correction factor :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textCorrection_factor" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Sum Actual capacity :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textSum_Actual_capacity" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <%--Step1--%>
            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <label class="control-label">=========================================================</label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Sum Hardness :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textSum_Hardness" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Sum Alkalinity :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textSum_Alkalinity" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Sum Chlorides :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textSum_Chlorides" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Sum Total_dissolved :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textSum_Total_dissolved" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <label class="control-label">Bleed Rate Require :</label>
                </div>
                <div class="col-md-8 col-xs-12">
                    <input id="textBleed_Rate_Require" type="text" class="form-control max-wide" disabled>
                </div>
            </div>
            <%--Step2--%>
        </div>
    </div>


    <div class="page-header">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-8 col-xs-8" style="text-align: left; font-size: 30px;">
                    <span>Calculation</span>
                </div>
                <div class="col-md-4 col-xs-4" style="text-align: right">
                </div>
            </div>
        </div>

    </div>
    <!----End Header---->

    <div class="panel-group">
        <div class="panel nav-tab panel-default" style="margin-top: 2em;">
            <ul class="nav nav-tabs">
             <%--   <li class="nav-item disabled">
                    <a href="#TAB1" class="nav-link" role="tab" data-toggle="tab">Model capacity</a>
                </li>--%>
                <li class="nav-item active">
                    <a href="#TAB1" class="nav-link" data-toggle="tab" role="tab">Bleed rate (ECS,ECF)</a>
                </li>
            </ul>

            <div class="panel-body">
                <div class="tab-content">
<%--                    <div class="tab-pane fade" role="tabpanel" id="TAB1">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4 style="font-weight: bold;">TAB2</h4>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-12">
                                    <div class="row form-group">
                                        <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                                        </div>
                                        <div class="col-md-8 col-xs-8" style="text-align: right">
                                        </div>
                                    </div>
                                    <div class="row">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <!--================End Tab 1====================-->
                    <div class="tab-pane active " role="tabpanel" id="TAB1">
                        <div class="panel-group">

                            <div class="panel-group">
                                <div class="panel">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="row-eq-height">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <div class="row">
                                                                    <div class="col-md-12 col-xs-12">
                                                                        <h4>
                                                                            <strong>Unit Data</strong>
                                                                        </h4>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--End Header--%>

                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-12">

                                                                        <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label">Model :</label>
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="col-md-12" id="SetCSS_ScreenMD_col12ofModel">
                                                                                        <div class="col-md-4 col-xs-12 SetCSS_Model" style="margin-bottom: 3px; padding-right: 2px">
                                                                                            <select class="form-control SetDropdown get_Degree " id="textSeries">
                                                                                                <option value=""></option>
                                                                                                <option value="ECS">ECS</option>
                                                                                                <option value="ECF">ECF</option>
                                                                                            </select>
                                                                                        </div>
                                                                                        <div class="col-md-4 col-xs-12 SetCSS_Model" style="margin-bottom: 3px; padding: 0px">
                                                                                            <select class="form-control SetDropdown get_Degree get_Time max-wide" id="textModel">
                                                                                                <option value=""></option>
                                                                                                <option value="1000">1000</option>
                                                                                                <option value="1250">1250</option>
                                                                                                <option value="1550">1550</option>
                                                                                                <option value="1700">1700</option>
                                                                                                <option value="2000">2000</option>
                                                                                                <option value="2350">2300</option>
                                                                                                <option value="2800">2800</option>
                                                                                            </select>
                                                                                        </div>
                                                                                        <div class="col-md-4 col-xs-12 SetCSS_Model" style="margin-bottom: 3px; padding-left: 2px">
                                                                                            <select class="form-control SetDropdown get_Time max-wide get_Degree " id="textType">
                                                                                                <%-- R N W S L--%>
                                                                                                <option value=""></option>
                                                                                                <option value="R">R</option>
                                                                                                <option value="N">N</option>
                                                                                                <option value="S">S</option>
                                                                                                <option value="L">L</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label">Refrigerant :</label>
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="col-md-12">
                                                                                        <select class="form-control max-wide SetDropdown get_Degree" id="textRefrigerant">
                                                                                            <option value=""></option>
                                                                                            <option value="R-717">R-717</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label">Condensing temperature :</label>
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <select class="form-control max-wide SetDropdown MakeUpWater get_Degree get_Time" id="textCondensing">
                                                                                            <option value=""></option>
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
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">°C</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12">
                                                                                    <label class="control-label">Wet bulb temperature :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <select class="form-control max-wide SetDropdown MakeUpWater get_Degree get_Time" id="textWetBulb">
                                                                                            <option value=""></option>
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
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">°C</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12">
                                                                                    <label class="control-label">Actual capacity :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-12 col-xs-12" style="text-align: left;">
                                                                                        <i id="textActual_capacity" style="text-align: center; font-size: 18px;font-weight:bold;color:#28a745; text-decoration-line: underline;"></i>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <!--END row Group body Step 1-->
                                                                    </div>
                                                                </div>
                                                                <!--row-->
                                                            </div>
                                                            <%--panel-body--%>
                                                        </div>
                                                    </div>
                                                    <!--End Step1 Unit Data-->

                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <div class="row">
                                                                    <div class="col-md-12 col-xs-12">
                                                                        <h4>
                                                                            <strong>Make-up water property</strong>
                                                                        </h4>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label">pH :</label>
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <input type="number" step="any" id="textpH" placeholder="ระหว่าง 6.5 ถึง 8.5 " class="form-control get_Degree " style="min-width: 100%" autocomplete="off" />
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <i id="textpH_Status" style="text-align: center; font-size: 18px; text-decoration-line: underline; color: forestgreen"></i>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4" style="padding-right: 0">
                                                                                    <label class="control-label">Hardness as CaCO₃ :</label>
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <input type="number" id="textHardness" class="form-control  MakeUpWater get_Degree get_Time " min="0" max="600" placeholder="ไม่เกิน 600 " style="min-width: 100%" autocomplete="off" />
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">ppm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label">Alkalinity as CaCO₃ :</label>
                                                                                </div>
                                                                                <div class="col-md-8">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <input type="number" id="textAlkalinity" class="form-control  MakeUpWater get_Degree get_Time " min="0" max="300" placeholder="ไม่เกิน 300 " style="min-width: 100%" autocomplete="off" />
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">ppm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12">
                                                                                    <label class="control-label">Chlorides as Cl :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <input type="number" id="textChlorides" class="form-control  MakeUpWater get_Degree get_Time " min="0" max="500" placeholder="ไม่เกิน 500 " style="min-width: 100%" autocomplete="off" />
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">ppm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12">
                                                                                    <label class="control-label">Total dissolved solids :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-8 col-xs-8">
                                                                                        <input type="number" id="textTotal_dissolved" class="form-control  MakeUpWater get_Degree get_Time " min="0" max="1800" placeholder="ไม่เกิน 1800 " style="min-width: 100%" autocomplete="off" />
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">ppm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <!--END row Group body Step 1-->
                                                                    </div>
                                                                </div>
                                                                <!--row-->
                                                            </div>
                                                            <%--panel-body--%>
                                                        </div>
                                                    </div>
                                                    <!--End Make-up water property-->
                                                </div>
                                                <!--row-eq-height-->
                                            </div>
                                            <!--row 1-->
                                        </div>
                                        <div class="row" style="margin-top: 1rem;display:none;" id="Div_3" >
                                            <div class="col-md-12">
                                                <div class="row-eq-height">
                                                    <div class="col-md-12 col-xs-12">
                                                        <div class="panel panel-default" style="border-color: #7CC377;">
                                                            <div class="panel-heading" style="background-color:#7CC377;color: #FFF;">
                                                                <div class="row">
                                                                    <div class="col-md-12 col-xs-12">
                                                                        <h4>
                                                                            <strong>Bleed-off configuration</strong>
                                                                        </h4>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--End Header--%>

                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12" style="padding-right: 0px">
                                                                                    <label class="control-label">Value opening angle :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-2 col-xs-4">
                                                                                        <input type="text" id="textDeegree" class="form-control max-wide" style="min-width: 100%" autocomplete="off" disabled/>
                                                                                        <%--<i id="textDeegree" style="text-align: center; font-size: 18px; text-decoration-line: underline;"></i>--%>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">degree</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12">
                                                                                    <label class="control-label">Bleed rate :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-2 col-xs-4">
                                                                                        <input type="text" id="textBleedrate_m3Hr" class="form-control max-wide" style="min-width: 100%" autocomplete="off" disabled/>
                                                                                        <%--<i id="textBleedrate_m3Hr" style="text-align: center; font-size: 18px; text-decoration-line: underline;"></i>--%>
                                                                                    </div>
                                                                                    <div class="col-md-4 col-xs-4">
                                                                                        <span style="text-align: center; font-size: 18px;">m3/h</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" style="margin-bottom: 2rem;">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-4 col-xs-12">
                                                                                    <label class="control-label">18.9 L time test :</label>
                                                                                </div>
                                                                                <div class="col-md-8 col-xs-12">
                                                                                    <div class="col-md-2 col-xs-3">
                                                                                        <input type="text" id="textminutes" class="form-control max-wide" style="min-width: 100%" autocomplete="off" disabled/>
                                                                                        <%--<i id="textminutes" style="text-align: center; font-size: 18px; text-decoration-line: underline;"></i>--%>
                                                                                    </div>
                                                                                    <div class="col-md-2 col-xs-3">
                                                                                        <span style="text-align: center; font-size: 18px;">min</span>
                                                                                    </div>
                                                                                    <div class="col-md-2 col-xs-3">
                                                                                        <input type="text" id="textseconds" class="form-control max-wide" style="min-width: 100%" autocomplete="off" disabled/>
                                                                                        <%--<i id="textseconds" style="text-align: center; font-size: 18px; text-decoration-line: underline;"></i>--%>
                                                                                    </div>
                                                                                    <div class="col-md-2 col-xs-3">
                                                                                        <span style="text-align: center; font-size: 18px;">sec</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <!--END row Group body Step 1-->
                                                                    </div>
                                                                </div>
                                                                <!--row-->
                                                            </div>
                                                            <%--panel-body--%>
                                                        </div>
                                                    </div>
                                                    <!--End Step3 Bleed-off configuration-->
                                                </div>
                                                <!--row-eq-height-->
                                            </div>
                                        </div>
                                        <!--row 2-->
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--================End Tab 2====================-->
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(document).ready(function () {
            var Obj_Excel = null;
            var Obj_ExcelDegee = null;
            //$("#textHardness").val(16);
            //$("#textAlkalinity").val(74);
            //$("#textChlorides").val(52);
            //$("#textTotal_dissolved").val(187);
            //$("#textCondensing").val(38);
            getData_ExcelTemp();
            getData_ExcelDegee();
            //console.log(Obj_Excel);
            //console.log(Obj_ExcelDegee);
            //Load Excel

            $('#textModel, #textCondensing, #textWetBulb').on('change', function () {
                get_Actualcapacity(Obj_Excel);
                //Cal ActualCopacity
            });
            //Step 1 

            $('#textpH').on('change', function () {
                let v = parseFloat($(this).val());
                if (v >= 6.5 && v <= 8.5) {
                    $("#textpH_Status").text("Passed");
                    $("#textpH_Status").css("color", "forestgreen");
                } else {
                    $("#textpH_Status").text("FAILED");
                    $("#textpH_Status").css("color", "red");
                }
            })
            

            $('#textpH').on('change', function () {
                let v = parseFloat($(this).val());
                if (v >= 6.5 && v <= 8.5) {
                    $("#textpH_Status").text("Passed");
                    $("#textpH_Status").css("color", "forestgreen");
                } else {
                    $("#textpH_Status").text("FAILED");
                    $("#textpH_Status").css("color", "red");
                }
            })

            $('.MakeUpWater').on('change', function () {
                let Hardness = $("#textHardness").val();
                let Alkalinity = $("#textAlkalinity").val();
                let Chlorides = $("#textChlorides").val();
                let Total_dissolved = $("#textTotal_dissolved").val();
                if (Hardness != "" && Alkalinity != "" && Chlorides != "" && Total_dissolved != "") {
                    get_Bleed_Rate_Require(Hardness, Alkalinity, Chlorides, Total_dissolved);
                }
                CSS_Actualcapacity();
                CSS_Bleed_Rate_Require();
            })

            $('.get_Degree').on('change', function () {
                let Hardness = $("#textHardness").val();
                let Alkalinity = $("#textAlkalinity").val();
                let Chlorides = $("#textChlorides").val();
                let Total_dissolved = $("#textTotal_dissolved").val();
                let Bleed_Rate_Require = $("#textBleed_Rate_Require").val();
                if (Hardness != "" && Alkalinity != "" && Chlorides != "" && Total_dissolved != "" && Bleed_Rate_Require != "") {
                    get_Degree(Obj_ExcelDegee);
                } else {
                    $("#textDeegree").val("");
                    $("#textBleedrate_m3Hr").val("");
                    //$("#textDeegree").text("");
                    //$("#textBleedrate_m3Hr").text("");
                }
                CSS_Actualcapacity();
                CSS_Bleed_Rate_Require();

            })

            $('.get_Time').on('change', function () {
                let Bleedrate_m3Hr = $("#textBleedrate_m3Hr").val();
                //let Bleedrate_m3Hr = $("#textBleedrate_m3Hr").text();
                if (Bleedrate_m3Hr != "") {
                    Bleedrate_m3Hr = parseFloat(Bleedrate_m3Hr).toFixed(3)
                    //console.log(Bleedrate_m3Hr);
                    let Total_Time = (18.9 / ((Bleedrate_m3Hr * 1000) / 3600));
                    //console.log('Total_Time: ' + Total_Time)
                    let mind = Total_Time % (60 * 60);
                    let minutes = Math.floor(mind / 60);
                    let secd = mind % 60;
                    let seconds = Math.floor(secd);
                    //console.log("minutes :" + minutes);
                    //console.log("secd :" + seconds);
                    $("#textminutes").val(minutes);
                    $("#textseconds").val(seconds);
                    //$("#textminutes").text(minutes);
                    //$("#textseconds").text(seconds);
                } else {
                    $("#textminutes").val("");
                    $("#textseconds").val("");
                    //$("#textminutes").text("");
                   // $("#textseconds").text("");

                }

            });
            //Step2


            function getData_ExcelTemp() {
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

            function getData_ExcelDegee() {
                $.ajax({
                    type: 'post',
                    url: './getData_ExcelDegee.ashx',
                    async: false,
                    success: function (response) {
                        Obj_ExcelDegee = JSON.parse(response);
                        //console.log(Obj_Excel);
                    },
                    processData: false,
                    contentType: false,
                    error: function () {
                        alert("Whoops something went wrong!");
                    }
                });
            }


            function get_Bleed_Rate_Require(Hardness, Alkalinity, Chlorides, Total_dissolved) {
                let MinValue = 0;
                let MinName = "";
                //console.log("------------------------------------");
                let SumHardness = (600 / Hardness);
                let SumAlkalinity = (300 / Alkalinity) ;
                let SumChlorides = (500 / Chlorides);
                let SumTotal_dissolved = (1800 / Total_dissolved);
                $("#textSum_Hardness").val(SumHardness);
                $("#textSum_Alkalinity").val(SumAlkalinity);
                $("#textSum_Chlorides").val(SumChlorides);
                $("#textSum_Total_dissolved").val(SumTotal_dissolved);
                MinValue = Math.min(SumHardness, SumAlkalinity, SumChlorides, SumTotal_dissolved);
                console.log(MinValue)
                //Get SumValue=Value/Mine
                //console.log(SumHardness);
                //console.log(SumAlkalinity);
                //console.log(SumChlorides);
                //console.log(SumTotal_dissolved);
                //console.log(MinValue);
                if (SumHardness == MinValue) {
                    MinName = "Hardness";
                } else if (SumAlkalinity == MinValue) {
                    MinName = "Alkalinity";
                } else if (SumChlorides == MinValue) {
                    MinName = "Chlorides";
                } else if (SumTotal_dissolved == MinValue) {
                    MinName = "Total_dissolved";
                }
                //console.log("Min Name :" + MinName+ " Value :" + MinValue);
                //Get Min Value
                let Sum_Actual = $("#textSum_Actual_capacity").val();
                if (Sum_Actual != "0") {
                    let Bleed_Rate_Require = (Sum_Actual / (MinValue - 1));
                    //console.log("(" + Sum_Actual + "(" + MinValue + "-1) =" + Bleed_Rate_Require);

                    const format = (num, decimals) => num.toLocaleString('en-US', {
                        minimumFractionDigits: 2,
                        maximumFractionDigits: 2,
                    });
                    //Decimal 2 digit
                    //console.log(format(TotalActual));
                    $("#textBleed_Rate_Require").val(format(Bleed_Rate_Require));
                } else {
                    
                    $("#textBleed_Rate_Require").val(0);
                }

            }


            function get_Actualcapacity(Obj_Excel) {
                let Correctionfactor = null;
                let Model = $("#textModel").val();
                //console.log('Model :' + Model);
                //Actual capacity (kW)

                let Condensing = $("#textCondensing").val();
                let WetBulb = $("#textWetBulb").val();
                let Obj_Excel_size = Object.keys(Obj_Excel).length;
                ////console.log('Obj_Excel :' + Obj_Excel_size);
                //console.log('Condensing :' + Condensing);
                //console.log('WetBulb :' + WetBulb);
                ////Correctionfactor Value (Loop json)

                CSS_Actualcapacity();
                if (Model != "" && Condensing != "" && WetBulb != "") {
                    for (var i = 0; i < Obj_Excel_size; i++) {
                        if (Obj_Excel[i].Condensing == Condensing && Obj_Excel[i].WetBulb == WetBulb) {
                            Correctionfactor = Obj_Excel[i].Value;
                            $("#textCorrection_factor").val(Obj_Excel[i].Value)
                            //console.log('Correction_factor(value) :' + Obj_Excel[i].Value);
                        }
                    }
                    if (Correctionfactor != 0) {
                        let sum = Model / Correctionfactor
                        sum = Math.floor(sum);
                        //console.log("Actual_capacity : " + sum)
                        $("#textActual_capacity").text(sum);
                        //End Step1

                        let textSum_Actual_capacity = (((sum / 2322) * 3600) / 1000);
                        $("#textSum_Actual_capacity").val(textSum_Actual_capacity);
                        //Get textSum_Actualcapacity
                    } else {
                        $("#textSum_Actual_capacity").val("");
                        $("#textActual_capacity").text("Error");
                    }

                }
            }

            function get_Degree(Obj_ExcelDegee) {
                let Degree = null;
                let m3Hr = null;
                let temp_m3Hr = null;
                let Model = $("#textModel").val();
                let Bleed_Rate_Require = $("#textBleed_Rate_Require").val();
                //console.log("Bleed_Rate_Require :" + Bleed_Rate_Require + "")
                //console.log('Bleed_Rate_Require :' + Bleed_Rate_Require);
                let Obj_Excel_size = Object.keys(Obj_ExcelDegee).length;

                let count = 0;
                let Maxcount = null;

                if (Bleed_Rate_Require != "" && Bleed_Rate_Require != "0" && Model != "") {

                    for (var i = 0; i < Obj_Excel_size; i++) {
                        if (Obj_ExcelDegee[i].Model == Model) {
                            Maxcount = Object.keys(Obj_ExcelDegee[i].Model).length;
                            //console.log("MaxCount :" + Maxcount + "")
                            //console.log("Count :" + count + "")
                            //console.log("m3Hr :" + Obj_ExcelDegee[i].m3Hr + "")

                            if (count == 0) {
                                if (Bleed_Rate_Require <= Obj_ExcelDegee[i].m3Hr) {
                                    Degree = Obj_ExcelDegee[i].Deg;
                                    m3Hr = Obj_ExcelDegee[i].m3Hr;
                                    //console.log("*******True*******");
                                }
                                //console.log("Condition => (" + Bleed_Rate_Require + " <= " + Obj_ExcelDegee[i].m3Hr + ") ");
                                //Step1
                            }
                            else {
                                if (Bleed_Rate_Require > temp_m3Hr && Bleed_Rate_Require <= Obj_ExcelDegee[i].m3Hr) {
                                    Degree = Obj_ExcelDegee[i].Deg;
                                    m3Hr = Obj_ExcelDegee[i].m3Hr;
                                    //console.log("*******True*******");
                                }
                                //console.log("Condition => (" + Bleed_Rate_Require + " > " + temp_m3Hr + " && " + Bleed_Rate_Require + " <= " + Obj_ExcelDegee[i].m3Hr + ")");
                                //Step 2
                            }

                            //if (count == Maxcount && Degree == null) {
                            //    swal('Error', 'กรุณาตรวจสอบข้อมูล', 'error');
                            //}

                            temp_m3Hr = Obj_ExcelDegee[i].m3Hr
                            count++

                            //console.log("Temp m3Hr :" + temp_m3Hr + "")
                            //console.log("Degree :" + Degree + "")
                            //console.log("-----------------------------------------------------------------");
                        }
                    }
                    if (Degree == null) {
                    $("#textDeegree").val("Null");
                    $("#textBleedrate_m3Hr").val("Null");

                    } else {
                    $("#textDeegree").val(Degree);
                    $("#textBleedrate_m3Hr").val(m3Hr);
                    }
                    //$("#textDeegree").text(Degree);
                    //$("#textBleedrate_m3Hr").text(m3Hr);
                    //console.log("====================");
                    //console.log("Model => "+Model);
                    //console.log("Bleed_Rate_Require => "+Bleed_Rate_Require);
                    //console.log("Degree => "+Degree);
                } else {
                    
                    $("#textDeegree").val('Error');
                    $("#textBleedrate_m3Hr").val('Error');
                }
            }

            function CSS_Actualcapacity() {
                //console.log("CSS_Actualcapacity");
                let Series = $("#textSeries").val();
                let Model = $("#textModel").val();
                let Type = $("#textType").val();
                let Refrigerant = $("#textRefrigerant").val();
                let Condensing = $("#textCondensing").val();
                let WetBulb = $("#textWetBulb").val();

                let pH_Status = $("#textpH_Status").text();
                let Hardness = $("#textHardness").val();
                let Alkalinity = $("#textAlkalinity").val();
                let Chlorides = $("#textChlorides").val();
                let Total_dissolved = $("#textTotal_dissolved").val();

          
                if (Series != "") {
                    $("#textSeries").css("border", "");
                } else {
                    $("#textSeries").css("border", "2px solid #FBC02D");
                }
                
                if (Model != "") {
                    $("#textModel").css("border", "");
                } else {
                    $("#textModel").css("border", "2px solid #FBC02D");
                }
                
                if (Type != "") {
                    $("#textType").css("border", "");
                } else {
                    $("#textType").css("border", "2px solid #FBC02D");
                }
                
                if (Refrigerant != "") {
                    $("#textRefrigerant").css("border", "");
                } else {
                    $("#textRefrigerant").css("border", "2px solid #FBC02D");
                }
                
                if (Condensing != "") {
                    $("#textCondensing").css("border", "");
                } else {
                    $("#textCondensing").css("border", "2px solid #FBC02D");
                }
                
                if (WetBulb != "") {
                    $("#textWetBulb").css("border", "");
                } else {
                    $("#textWetBulb").css("border", "2px solid #FBC02D");
                }
                
                if (pH_Status != "") {
                    if (pH_Status == "Passed") {
                        $("#textpH").css("border", "");
                    } else {
                        $("#textpH").css("border", "2px solid red");
                    }
                } else {
                    $("#textpH").css("border", "2px solid #FBC02D");
                }
                
                if (Hardness != "") {
                    $("#textHardness").css("border", "");
                } else {
                    $("#textHardness").css("border", "2px solid #FBC02D");
                }
                
                if (Alkalinity != "") {
                    $("#textAlkalinity").css("border", "");
                } else {
                    $("#textAlkalinity").css("border", "2px solid #FBC02D");
                }
                
                if (Chlorides != "") {
                    $("#textChlorides").css("border", "");
                } else {
                    $("#textChlorides").css("border", "2px solid #FBC02D");
                }
                
                if (Total_dissolved != "") {
                    $("#textTotal_dissolved").css("border", "");
                } else {
                    $("#textTotal_dissolved").css("border", "2px solid #FBC02D");
                }
                
                if (Series != "" && Model != "" && Type != "" && Condensing != "" && Series != "" && WetBulb != "" &&
                    /*pH_Status == "Passed" &&*/ Hardness != "" && Alkalinity != "" && Chlorides != "" && Total_dissolved != "") {

                    $("#Div_3").css("display", "");

                } else {
                    $("#Div_3").css("display", "none");

                }

                //check CSS
            }

            function CSS_Bleed_Rate_Require() {
                //console.log("CSS_Bleed_Rate_Require");
                let Hardness = $("#textHardness").val();
                let Alkalinity = $("#textAlkalinity").val();
                let Chlorides = $("#textChlorides").val();
                let Total_dissolved = $("#textTotal_dissolved").val();

                //let Correctionfactor = $("#textCorrection_factor").val();

                if (Hardness != "") {
                    //$("#textHardness").css("border", "");
                    checkMinMax("Hardness");
                } else {
                    $("#textHardness").css("border", "2px solid #FBC02D");
                }

                if (Alkalinity != "") {
                    //$("#textAlkalinity").css("border", "");
                    checkMinMax("Alkalinity");
                } else {
                    $("#textAlkalinity").css("border", "2px solid #FBC02D");
                }

                if (Chlorides != "") {
                    //$("#textChlorides").css("border", "");
                    checkMinMax("Chlorides");
                } else {
                    $("#textChlorides").css("border", "2px solid #FBC02D");
                }

                if (Total_dissolved != "") {
                    //$("#textTotal_dissolved").css("border", "");
                    checkMinMax("Total_dissolved");
                } else {
                    $("#textTotal_dissolved").css("border", "2px solid #FBC02D");
                }
                //check CSS
                // if (Correctionfactor == "0") {
                //        $("#textModel").css("border", "2px solid red");
                //        $("#textWetBulb").css("border", "2px solid red");
                //        $("#textCondensing").css("border", "2px solid red");
                //    } else {
                //        $("#textModel").css("border", "");
                //        $("#textWetBulb").css("border", "");
                //        $("#textCondensing").css("border", "");
                //}

            }

            function checkMinMax(id) {
                let v = "";
                let min = "";
                let max = "";

                if (id == 'Hardness') {
                    v = parseInt($("#textHardness").val());
                    min = parseInt($("#textHardness").attr('min'));
                    max = parseInt($("#textHardness").attr('max'));
                    if (v < min || v > max || v == 0 ) {
                        $("#textHardness").css("border", "2px solid red");
                        //console.log('min')
                    }  else {
                        //console.log("")
                        $("#textHardness").css("border", "");
                    }
                }
                else if (id == 'Alkalinity') {
                    v = parseInt($("#textAlkalinity").val());
                    min = parseInt($("#textAlkalinity").attr('min'));
                    max = parseInt($("#textAlkalinity").attr('max'));
                    if (v < min || v > max || v == 0 ) {
                        $("#textAlkalinity").css("border", "2px solid red");
                        //console.log('min')
                    } else {
                        //console.log("")
                        $("#textAlkalinity").css("border", "");
                    }
                }
                else if (id == 'Chlorides') {
                    v = parseInt($("#textChlorides").val());
                    min = parseInt($("#textChlorides").attr('min'));
                    max = parseInt($("#textChlorides").attr('max'));
                    if (v < min || v > max || v == 0 ) {
                        $("#textChlorides").css("border", "2px solid red");
                        //console.log('min')
                    } else {
                        //console.log("")
                        $("#textChlorides").css("border", "");
                    }
                }
                else if (id == 'Total_dissolved') {
                     v = parseInt($("#textTotal_dissolved").val());
                    min = parseInt($("#textTotal_dissolved").attr('min'));
                    max = parseInt($("#textTotal_dissolved").attr('max'));
                    if (v < min || v > max || v == 0 ) {
                        $("#textTotal_dissolved").css("border", "2px solid red");
                        //console.log('min')
                    } else {
                        //console.log("")
                        $("#textTotal_dissolved").css("border", "");
                    }
                
                }

                //console.log(min)
                //console.log(max)
                //console.log(v)
            }

        });




    </script>
</asp:Content>
