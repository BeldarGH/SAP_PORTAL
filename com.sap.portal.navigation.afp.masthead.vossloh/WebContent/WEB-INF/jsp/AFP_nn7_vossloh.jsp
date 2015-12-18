<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

/*1450430653955*/.logobar_container {
	
	/*background-color:#ffffff;*/
	/* Solo cambio el color del fondo de la celda del logo. El resto lo dejo igual */
	background-color:#F0F8FF;
	/*background-image:url(images/masthead/BgTop10X.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	height:33px;
	left:0px;
	position:relative;
	top:0px;
	sap-sprite-include:true;
	sap-padding:0px 0px 25px 0px*/
}
/* Esta sección no está presente en el masthead de  vossloh
.searchbar-container {
	background-color:#000000;
	background-repeat:repeat-x;
	height:33px;
	left:0px;
	position:relative;
	top:0px;
	background-image:url(images/masthead/BgTop10X.gif?7.31.11.0.3);
	sap-sprite-include:true;
	sap-padding:0px 0px 25px 0px;
	text-align:-moz-right
}
*/

/* En la sección de enlaces se cambia el color del fondo y el color del texto */
.hyperlink_container {
	/*background-color:#ffffff;*/
	background-color:#F0F8FF;
	/*color:#233866;*/
	color:#05850C;
	/*
	cursor:default;
	font-family:Ariel,Helvetica,sans-serif;
	font-size:11px;
	height:33px;
	left:0px;
	position:relative;
	top:0px;
	background-image:url(images/masthead/BgTop10XHyperLink.gif?7.31.11.0.3);
	text-align:-moz-right;
	sap-sprite-include:true;
	sap-padding:0px 0px 25px 0px;
	background-repeat:repeat-x
	*/
}
/*
.logoImg {
	height:29px;
	margin-left:8px;
	position:relative;
	width:105px;
	background-image:url(images/masthead/SAPLogo.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	top:0px
}
*/
/* En la barra de menú inferior se cambia el color del fondo */
.menubar-container {
	/*background-image:url(images/masthead/BgGenericBarX.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	height:23px;
	left:0px;
	position:relative;
	top:0px;
	sap-sprite-include:true;*/
	background-color:#F0F8FF;
}
/*
.hyperlink_divider {
	background-repeat:repeat-y;
	background-image:url(images/masthead/LogoutDividerY.gif?7.31.11.0.3);
	width:1px;
	display:block;
	float:left;
	height:90%;
	margin-top:3px;
}
.collaboration_divider {
	background-repeat:repeat-y;
	height:30px;
	background-image:url(images/masthead/LogoutDividerY.gif?7.31.11.0.3);
	width:1px;
	display:block;
	float:left;
	margin-left:15px;
	margin-right:15px
}
*/
/* Se cambia el color del fondo de la sección contigua al logo */
.space_container {
	background-color:#F0F8FF;
	/*
	background-image:url(images/masthead/BgTop10X.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	height:33px;
	left:0px;
	position:relative;
	top:0px;
	width:100%;
	sap-sprite-include:true;
	sap-padding:0px 0px 25px 0px
	*/
}
/* Se cambia el color de fondo de la sección de container */
.collaboration_container {
	background-color:#F0F8FF;
	/*
	background-image:url(images/masthead/BgTop10X.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	height:33px;
	left:0px;
	position:relative;
	top:0px;
	width:100%;
	sap-sprite-include:true;
	sap-padding:0px 0px 25px 0px;
	padding-top:1px;
	padding-right:10px*/
}

/* Se cambia el color del texto de los "botones"  */
.btnStandard {
	/*color:#233866;*/
	color:#1bc70b;
	/*cursor:pointer;
	font:normal 11px arial;
	text-align:center;*/
}

.btnNormal .button_inner {
	/*background-color:#EDF4FC;*/
	background-color:#000000;
	/*
	background-image:url(images/masthead/TextButtonStd00X.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	sap-sprite-include:true;
	padding-left:5px;
	padding-right:5px;
	border:1px solid #B0BACD 
	*/
}
/*
.btnHover .button_inner {
	background-color:#D5E3F1;
	background-repeat:repeat-x;
	background-image:url(images/masthead/Search/SearchButton/Hover/TextButtonHover00X.gif?7.31.11.0.3);
	sap-sprite-include:true;
	color:#233866;
	padding-left:5px;
	padding-right:5px;
	border:1px solid #B0BACD
}
.btnDown .button_inner {
	background-image:url(images/masthead/Search/SearchButton/Down/TextButtonDown00X.gif?7.31.11.0.3);
	background-color:#F9FCFE;
	background-repeat:repeat-x;
	sap-sprite-include:true;
	padding-left:5px;
	padding-right:5px;
	border:1px solid #B0BACD
}
.nova_hyperlink {
	color:#233866;
	cursor:pointer;
	font:normal 11px arial;
	text-align:-moz-center
}
.nova_hyperlinkNormal .button_inner {
	padding:1px 6px 1px 6px
}
body {
	margin:0px !important;
	overflow:hidden !important;
	padding:0 !important;
	position:absolute;
	top:0px;
	left:0px;
	z-index:0;
	height:100% !important;
	width:100% !important
}
.loadingBackground {
	background-color:white;
	left:0px;
	padding:58px 0px 0px 0px;
	position:absolute;
	top:0px;
	z-index:1000;
	width:100%;
	height:100%
}
.loadingScreen {
	height:360px;
	position:absolute;
	width:517px;
	z-index:1100;
	background-image:url(images/layout/SplashScreen.png?7.31.11.0.3);
	filter:alpha(opacity=70);
	background-repeat:no-repeat;
	top:-180px;
	left:50%;
	margin-left:-258px
}
.screenLoadingAnimation {
	background-image:url(images/layout/ScreenLoadingAniLarge.gif?7.31.11.0.3);
	background-repeat:no-repeat;
	height:9px;
	left:37px;
	position:absolute;
	top:275px;
	width:445px;
	sap-sprite-include:true
}
.layoutCenter {
	position:relative;
	left:0px;
	background-color:#ffffff;
	background-image:url(images/masthead/BgGenericBarX.gif?7.31.11.0.3);
	background-repeat:repeat-x
}
.OuterFrame .Frame00 {
	background-image:url(images/layout/BlueFrame00.gif?7.31.11.0.3);
	background-position:top left;
	sap-sprite-include:true;
	background-repeat:no-repeat;
	height:5px;
	width:5px;
}
.OuterFrame .Frame10 {
	background-image:url(images/layout/BlueFrame10X.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x;
	sap-sprite-include:true
}
.OuterFrame .Frame20 {
	background-image:url(images/layout/BlueFrame20.gif?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat;
	sap-sprite-include:true;
	width:5px;
}
.OuterFrame .Frame01 {
	background-image:url(images/layout/BlueFrame01Y.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	sap-sprite-include:true
}
.OuterFrame .Frame21 {
	background-image:url(images/layout/BlueFrame21Y.gif?7.31.11.0.3);
	background-position:top right;
	background-repeat:repeat-y
}
.OuterFrame .Frame02 {
	background-image:url(images/layout/BlueFrame02.gif?7.31.11.0.3);
	background-position:bottom left;
	background-repeat:no-repeat;
	height:5px;
	sap-sprite-include:true
}
.OuterFrame .Frame12 {
	background-image:url(images/layout/BlueFrame12X.gif?7.31.11.0.3);
	background-position:bottom left;
	background-repeat:repeat-x
}
.OuterFrame .Frame22 {
	background-image:url(images/layout/BlueFrame22.gif?7.31.11.0.3);
	background-position:bottom right;
	background-repeat:no-repeat
}
.leftNavPanel {
	-moz-user-select:none
}
.leftNavPanelContent {
	overflow:hidden;
	position:absolute;
	z-index:3
}
.leftNavPanelScrollbar {
	position:absolute;
	z-index:4
}
.leftNavPanel .leftNavPanelResize {
	cursor:e-resize;
	height:100%;
	width:10px;
	float:right;
	position:relative;
	z-index:4
}
.leftNavPanel .leftNavPanelOpen {
	width:186px
}
.leftNavPanel .leftNavPanel00 {
	height:29px;
	width:19px;
	background-image:url(images/layout/Navi00.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:no-repeat
}
.leftNavPanel .leftNavPanel10 {
	height:29px;
	background-image:url(images/layout/Navi10X.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:repeat-x
}
.leftNavPanel .leftNavPanel20 {
	cursor:pointer;
	height:29px;
	width:21px;
	sap-sprite-include:true;
	background-image:url(images/layout/Navi20.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat
}
.leftNavPanel .leftNavPanel01 {
	background-image:url(images/layout/Navi01Y.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	width:19px
}
.leftNavPanel .leftNavPanel11 {
	background-image:url(images/layout/Navi11XY.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat
}
.leftNavPanel .leftNavPanel21 {
	text-align:right;
	width:21px;
	background-image:url(images/layout/Navi21Y.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:repeat-y
}
.leftNavPanel .leftNavPanel02 {
	height:127px;
	width:19px;
	background-image:url(images/layout/Navi02.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:no-repeat
}
.leftNavPanel .leftNavPanel12 {
	height:127px;
	background-image:url(images/layout/Navi12X.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:repeat-x
}
.leftNavPanel .leftNavPanel22 {
	height:127px;
	text-align:right;
	width:21px;
	background-image:url(images/layout/Navi22.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:no-repeat
}
.leftNavPanel .leftNavPanelCollapsed {
	cursor:pointer;
	height:41px;
	width:25px;
	background-image:url(images/layout/NaviCollapsed.png?7.31.11.0.3);
	sap-sprite-include:true;
	background-position:top left;
	background-repeat:no-repeat
}
.breadcrumb {
	font:normal 11px arial;
	padding:0px 5px 0px 0px
}
.breadcrumb.bc_inactive {
	color:#204BA2
}
.breadcrumb.bc_active {
	color:#233866
}
.breadcrumb.bc_inactive.bc_hover {
	color:#204BA2;
	cursor:pointer;
	text-decoration:underline
}
.collaboration_link {
	font:normal 11px arial
}
.collaboration_link.cl_inactive {
	color:#233866
}
.collaboration_link.cl_active {
	color:#233866
}
.collaboration_link.cl_inactive.cl_hover {
	color:#233866;
	cursor:pointer;
	text-decoration:underline
}
.button_std {
	color:#000000;
	cursor:pointer;
	font-family:arial;
	font-size:11px;
	height:100%;
	text-align:center;
	margin:0px 2px 0px 0px
}
.button_std .button_left {
	background-image:url(images/PopupWindow/std/button_reg_0.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px
}
.button_std .button_left_emph {
	background-image:url(images/PopupWindow/std/button_emph_reg.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:8px
}
.button_std .button_middle {
	background-image:url(images/PopupWindow/std/button_reg_1.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	float:left;
	text-align:center;
	vertical-align:middle;
	padding:2px 6px 2px 6px;
	height:14px
}
.button_std .button_right {
	background-image:url(images/PopupWindow/std/button_reg_2.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px
}
.button_down {
	color:#000000;
	cursor:pointer;
	font-family:arial;
	font-size:11px;
	height:100%;
	text-align:center;
	margin:0px 2px 0px 0px
}
.button_down .button_left {
	background-image:url(images/PopupWindow/down/button_down_0.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px
}
.button_down .button_left_emph {
	background-image:url(images/PopupWindow/down/button_emph_down.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:8px
}
.button_down .button_middle {
	background-image:url(images/PopupWindow/down/button_down_1.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	float:left;
	text-align:center;
	vertical-align:middle;
	padding:2px 6px 2px 6px;
	height:14px
}
.button_down .button_right {
	background-image:url(images/PopupWindow/down/button_down_2.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px
}
.button_hover {
	color:#000000;
	cursor:pointer;
	font-family:arial;
	font-size:11px;
	height:100%;
	text-align:center;
	margin:0px 2px 0px 0px
}
.button_hover .button_left {
	background-image:url(images/PopupWindow/hover/button_hover_0.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px
}
.button_hover .button_left_emph {
	background-image:url(images/PopupWindow/hover/button_emph_hover.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:8px
}
.button_hover .button_middle {
	background-image:url(images/PopupWindow/hover/button_hover_1.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	float:left;
	text-align:center;
	vertical-align:middle;
	padding:2px 6px 2px 6px;
	height:14px
}
.button_hover .button_right {
	background-image:url(images/PopupWindow/hover/button_hover_2.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px
}
.nova_dialogbox_background {
	background-position:left top;
	background-repeat:repeat;
	left:0px;
	padding-top:180px;
	position:absolute;
	top:0px;
	z-index:800;
	background-color:transparent;
	background-image:url(images/layout/blank.gif?7.31.11.0.3)
}
.nova_dialog_box {
	cursor:default;
	font-size:11px;
	height:100%;
	left:0px;
	position:absolute;
	top:0px;
	width:100%
}
.nova_dialog_box .c00 {
	height:18px;
	background-image:url(images/PopupWindow/PopupWindow00.png?7.31.11.0.3);
	width:24px;
	background-repeat:no-repeat;
	background-position:top left
}
.nova_dialog_box .c10 {
	background-repeat:repeat-x;
	height:18px;
	background-image:url(images/PopupWindow/PopupWindow10X.png?7.31.11.0.3)
}
.title {
	color:#FFFFFF;
	font-family:arial;
	font-size:11px;
	font-weight:bold;
	height:18px;
	position:relative;
	top:4px;
	width:100%
}
.nova_dialog_box .c20 {
	height:18px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow20.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.dialogbox_popupWinClose {
	background-color:transparent;
	border-bottom-style:none;
	border-bottom-width:medium;
	border-left-style:none;
	border-left-width:medium;
	border-right-style:none;
	border-right-width:medium;
	border-top-style:none;
	border-top-width:medium;
	cursor:pointer;
	top:4px;
	width:18px;
	position:relative;
	height:18px;
	background-image:url(images/PopupWindow/PopupWinCloseStd.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left;
	display:block
}
.dialogbox_popupWinCloseHoverState {
	background-color:transparent;
	border-bottom-style:none;
	border-bottom-width:medium;
	border-left-style:none;
	border-left-width:medium;
	border-right-style:none;
	border-right-width:medium;
	border-top-style:none;
	border-top-width:medium;
	cursor:pointer;
	top:4px;
	width:18px;
	position:relative;
	height:18px;
	background-image:url(images/PopupWindow/PopupWinCloseHover.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left;
	display:block
}
.dialogbox_popupWinCloseDownState {
	background-color:transparent;
	border-bottom-style:none;
	border-bottom-width:medium;
	border-left-style:none;
	border-left-width:medium;
	border-right-style:none;
	border-right-width:medium;
	border-top-style:none;
	border-top-width:medium;
	cursor:pointer;
	top:4px;
	width:18px;
	position:relative;
	height:18px;
	background-image:url(images/PopupWindow/PopupWinCloseDown.png?7.31.11.0.3);
	background-position:top left;
	display:block
}
.nova_dialog_box  .c02 {
	height:18px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow02.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.nova_dialog_box  .c12 {
	height:18px;
	width:100%;
	background-image:url(images/PopupWindow/PopupWindow12X.png?7.31.11.0.3);
	background-repeat:repeat-x;
	sap-sprite-include:true
}
.nova_dialog_box  .c22 {
	height:18px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow22.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.nova_dialog_box   .c03 {
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow03Y.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	text-align:-moz-right
}
.nova_dialog_box  .c13 {
	background-repeat:repeat;
	background-image:url(images/PopupWindow/PopupWindow13XY.png?7.31.11.0.3);
	padding:3px 0px 0px 0px;
	width:100%
}
.dialog_box_content {
	color:black;
	font-size:11px;
	left:15px;
	position:relative;
	width:204px;
	font-family:arial;
	height:16px
}
.nova_dialog_box  .c23 {
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow23Y.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	text-align:-moz-left
}
.nova_dialog_box  .c24 {
	height:23px;
	width:24px
}
.nova_dialog_box  .c24 .image {
	height:23px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow24.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.nova_nonrounded_dialog_box  .c14 {
	width:100%;
	background-position:top left;
	background-repeat:repeat;
	background-image:url(images/PopupWindow/PopupWindow13XY.png?7.31.11.0.3)
}
.nova_dialog_box  .c04 {
	height:23px;
	width:24px
}
.nova_dialog_box  .c04 .image {
	height:23px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow04.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.divider_panel {
	height:20px;
	width:231px
}
.horizontal_divider {
	height:15px;
	padding:0px 0px 0px 0px;
	width:34px;
	background-image:url(images/PopupWindow/PopupWindowWave.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.horizontal_divider_line_down {
	height:15px;
	padding:0px 0px 0px 0px;
	width:116px;
	background-image:url(images/PopupWindow/PopupWindowDividerX_down.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x
}
.horizontal_divider_line_down_cont {
	height:15px;
	padding:0px 0px 0px 0px;
	width:13px;
	position:relative;
	top:19px;
	background-image:url(images/PopupWindow/PopupWindowDividerX_down.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x
}
.horizontal_divider_line_up {
	height:15px;
	padding:0px 0px 0px 0px;
	width:110px;
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/PopupWindow/PopupWindowDividerX_up.png?7.31.11.0.3)
}
.horizontal_divider_line_up_cont {
	height:15px;
	padding:0px 0px 0px 0px;
	width:13px;
	position:relative;
	top:19px;
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/PopupWindow/PopupWindowDividerX_up.png?7.31.11.0.3)
}
.nova_dialog_box_buttons_pannel {
	height:20px;
	position:relative;
	padding:0px 11px
}
.NovaScrollBar {
	background-color:#47B838;
	border:1px solid #000000
}
.NovaScrollBar .UpArrowStandard {
	background-image:url(images/NovaScrollBar/NaviScrollButtonUpStd.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	cursor:pointer;
	height:17px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .UpArrowDown {
	background-image:url(images/NovaScrollBar/NaviScrollButtonUpDown.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	cursor:pointer;
	height:17px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .UpArrowHover {
	background-image:url(images/NovaScrollBar/NaviScrollButtonUpHover.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	cursor:pointer;
	height:17px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .DownArrowStandard {
	background-image:url(images/NovaScrollBar/NaviScrollButtonDownStd.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	cursor:pointer;
	height:17px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .DownArrowDown {
	background-image:url(images/NovaScrollBar/NaviScrollButtonDownDown.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	cursor:pointer;
	height:17px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .DownArrowHover {
	background-image:url(images/NovaScrollBar/NaviScrollButtonDownHover.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	cursor:pointer;
	height:17px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .SliderContainer {
	display:block;
	position:relative
}
.NovaScrollBar .SliderStandard {
	background-image:url(images/NovaScrollBar/NaviScrollBoxStandardY.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #000000;
	border-top:1px solid #000000;
	left:0px;
	position:absolute;
	top:0px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .SliderDown {
	background-image:url(images/NovaScrollBar/NaviScrollBoxDownY.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #000000;
	border-top:1px solid #000000;
	left:0px;
	position:absolute;
	top:0px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .SliderHover {
	background-image:url(images/NovaScrollBar/NaviScrollBoxHoverY.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #000000;
	border-top:1px solid #000000;
	left:0px;
	position:absolute;
	top:0px;
	width:14px;
	sap-sprite-include:true
}
.NovaScrollBar .CenterGrip {
	height:1px;
	position:absolute;
	top:50%;
	width:100%
}
.NovaScrollBar .SliderGrip {
	background-image:url(images/NovaScrollBar/NaviScrollBoxGrip.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	height:8px;
	left:50%;
	margin-left:-3px;
	position:absolute;
	top:-4px;
	width:6px;
	sap-sprite-include:true
}
.GeneralPopupMenu {
	display:none;
	position:absolute;
	z-index:500
}
.GeneralPopupMenu .PopUpMenu00 {
	border-left:#838381 1px solid;
	border-top:#838381 1px solid;
	width:7px;
	height:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenu10 {
	border-top:#838381 1px solid;
	height:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenu20 {
	border-right:#838381 1px solid;
	border-top:#838381 1px solid;
	width:7px;
	height:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenu01 {
	width:7px;
	background-color:#ffffff;
	display:block
}
.GeneralPopupMenu .PopUpMenu11 {
	background-color:#FFFFFF;
	padding:3px 2px
}
.GeneralPopupMenu .PopUpMenu21 {
	width:7px;
	background-color:#ffffff;
	display:block
}
.GeneralPopupMenu .PopUpMenu02 {
	border-left:#838381 1px solid;
	border-bottom:#838381 1px solid;
	width:7px;
	height:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenu12 {
	border-bottom:#838381 1px solid;
	height:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenu22 {
	border-right:#838381 1px solid;
	border-bottom:#838381 1px solid;
	width:7px;
	height:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenuItemRow {
	color:#233866;
	cursor:pointer;
	font:normal 11px Arial;
	outline:none
}
.GeneralPopupMenu .PopUpMenuHover00 {
	width:7px;
	background-color:#dde1ec
}
.GeneralPopupMenu .PopUpMenuHover10 {
	padding:3px 2px;
	font:normal 11px Arial;
	background-color:#dde1ec;
	color:#233866
}
.GeneralPopupMenu .PopUpMenuHover20 {
	width:7px;
	background-color:#dde1ec
}
.GeneralPopupMenu .PopUpMenuDown00 {
	width:7px;
	background-color:#fcdd82
}
.GeneralPopupMenu .PopUpMenuDown10 {
	padding:3px 2px;
	font:normal 11px Arial;
	color:#233866;
	background-color:#fcdd82
}
.GeneralPopupMenu .PopUpMenuDown20 {
	width:7px;
	background-color:#fcdd82
}
* {
	margin:0px 0px;
	padding:0px 0px;
	outline:none
}
.Dtn {
	margin:0px
}
.Dtn .Text {
	color:#ffffff;
	font:normal 11px arial
}
.Dtn .Bold {
	font-weight:bold
}
.Dtn .dtnLink {
	cursor:pointer
}
.Dtn .NodeRow {
	cursor:pointer
}
.Dtn .NavigationListDivider00 {
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/dtn/NavigationListDivider00.gif?7.31.11.0.3);
	height:1px;
	width:9px
}
.Dtn .NavigationListDivider10 {
	background-position:top left;
	background-image:url(images/dtn/NavigationListDivider10X.gif?7.31.11.0.3);
	background-repeat:repeat-x
}
.Dtn .NavigationListDivider20 {
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/dtn/NavigationListDivider20.gif?7.31.11.0.3);
	width:9px
}
.Dtn .IconBullet {
	height:14px;
	width:14px;
	background-image:url(images/dtn/Tree_Leave.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	sap-sprite-include:true
}
.Dtn .CenterLine {
	height:1px;
	position:absolute;
	top:50%;
	width:100%
}
.Dtn .NaviTreeNormalState00 {
	padding-left:19px;
	border-bottom:1px none #1A2B53;
	border-top:1px none #1A2B53
}
.Dtn .NaviTreeNormalState10 {
	padding-bottom:6px;
	padding-top:5px
}
.Dtn .NaviTreeDownState00 {
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #1A2B53;
	border-top:1px solid #1A2B53;
	padding-left:19px;
	background-image:url(images/dtn/NaviDownState00Y.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.Dtn .NaviTreeDownState10 {
	background-position:top left;
	background-repeat:repeat;
	padding-bottom:5px;
	padding-top:4px;
	background-image:url(images/dtn/NaviDownState10XY.gif?7.31.11.0.3)
}
.Dtn .NaviTreeHoverState00 {
	background-position:top left;
	background-repeat:repeat-y;
	padding-left:19px;
	background-image:url(images/dtn/NaviHoverState00Y.gif?7.31.11.0.3);
	border-bottom:1px none #1A2B53;
	border-top:1px none #1A2B53
}
.Dtn .NaviTreeHoverState10 {
	background-position:top left;
	background-repeat:repeat;
	padding-bottom:6px;
	padding-top:5px;
	background-image:url(images/dtn/NaviHoverState10XY.gif?7.31.11.0.3)
}
.Dtn .NaviListNormalState00 {
	border-bottom:1px solid #1A2B53;
	padding-left:19px
}
.Dtn .NaviListNormalState10 {
	font:bold 11px arial;
	padding-bottom:6px;
	padding-top:5px;
	text-decoration:none;
	color:#FFFFFF
}
.Dtn .NaviListDownState00 {
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #1A2B53;
	padding-left:19px;
	background-image:url(images/dtn/NaviDownState00Y.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.Dtn .NaviListDownState10 {
	background-position:top left;
	background-repeat:repeat;
	font:bold 11px arial;
	padding-bottom:6px;
	padding-top:5px;
	background-image:url(images/dtn/NaviDownState10XY.gif?7.31.11.0.3);
	text-decoration:none;
	color:#FFFFFF
}
.Dtn .NaviListHoverState00 {
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #1A2B53;
	padding-left:19px;
	background-image:url(images/dtn/NaviHoverState00Y.gif?7.31.11.0.3)
}
.Dtn .NaviListHoverState10 {
	background-position:top left;
	background-repeat:repeat;
	font:bold 11px arial;
	padding-bottom:6px;
	padding-top:5px;
	text-decoration:none;
	color:#FFFFFF;
	background-image:url(images/dtn/NaviHoverState10XY.gif?7.31.11.0.3)
}
.Dtn .SubViewBox {
	border-bottom:1px solid #1A2B53;
	display:none;
	padding-left:3px;
	width:100%
}
.Dtn .SubViewBox00 {
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/dtn/SubViewBox00.gif?7.31.11.0.3);
	height:12px;
	width:13px
}
.Dtn .SubViewBox10 {
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/dtn/SubViewBox10X.gif?7.31.11.0.3);
	height:12px;
	width:1px
}
.Dtn .SubViewBox20 {
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/dtn/SubViewBox20.gif?7.31.11.0.3);
	sap-sprite-include:true;
	width:12px;
	height:12px
}
.Dtn .SubViewBox01 {
	background-position:top left;
	background-repeat:repeat-y;
	background-image:url(images/dtn/SubViewBox01Y.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.Dtn .SubViewBox11 {
	background-position:top left;
	background-repeat:repeat;
	background-image:url(images/dtn/SubViewBox11XY.gif?7.31.11.0.3)
}
.Dtn .SubViewBox21 {
	background-position:top left;
	background-repeat:repeat-y;
	background-image:url(images/dtn/SubViewBox21Y.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.Dtn .SubViewBox02 {
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/dtn/SubViewBox02.gif?7.31.11.0.3);
	sap-sprite-include:true;
	height:12px
}
.Dtn .SubViewBox12 {
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/dtn/SubViewBox12X.gif?7.31.11.0.3);
	sap-sprite-include:true;
	height:12px
}
.Dtn .SubViewBox22 {
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/dtn/SubViewBox22.gif?7.31.11.0.3);
	sap-sprite-include:true;
	height:12px
}
.Dtn .SubViewItem {
	cursor:pointer;
	margin-left:4px;
	padding-bottom:3px;
	padding-left:20px;
	padding-right:7px;
	padding-top:0px;
	width:100%;
	margin-top:3px
}
.Dtn .SubViewItemNormal {
	text-decoration:none;
	color:#FFFFFF;
	font:normal 11px arial;
	background-image:url(images/dtn/NaviRadioButtonOff.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat
}
.Dtn .SubViewItemDown {
	text-decoration:none;
	color:#FFFFFF;
	font:normal 11px arial;
	background-image:url(images/dtn/NaviRadioButtonOn.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat
}
.Dtn .SubViewItemHover {
	text-decoration:none;
	color:#FFFFFF;
	font:normal 11px arial;
	background-image:url(images/dtn/NaviRadioButtonHover.png?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat
}
.dynamicnavigation {
	margin:0px
}
.dynamicnavigation .NavigationListDivider00 {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/com.sap.portal.design.portaldesigndata/themes/portal/vossloh_green/AFP/images/dtn/NavigationListDivider00.png?7.31.11.0.3', sizingMethod='crop')
}
.dynamicnavigation .NavigationListDivider10 {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/com.sap.portal.design.portaldesigndata/themes/portal/vossloh_green/AFP/images/dtn/NavigationListDivider10X.png?7.31.11.0.3', sizingMethod='scale')
}
.dynamicnavigation .NavigationListDivider20 {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/com.sap.portal.design.portaldesigndata/themes/portal/vossloh_green/AFP/images/dtn/NavigationListDivider20.png?7.31.11.0.3', sizingMethod='crop')
}
.dynamicnavigation .NaviTreeNormalState00 {
	padding-left:19px
}
.dynamicnavigation .NaviTreeNormalState10 {
	padding-bottom:6px;
	padding-top:5px
}
.dynamicnavigation .NaviTreeDownState00 {
	background-position:top left;
	background-repeat:repeat-y;
	border-bottom:1px solid #1A2B53;
	border-top:1px solid #1A2B53;
	padding-left:19px;
	background-image:url(images/dtn/NaviDownState00Y.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.dynamicnavigation .NaviTreeDownState10 {
	background-position:top left;
	background-repeat:repeat;
	padding-bottom:5px;
	padding-top:4px;
	background-image:url(images/dtn/NaviDownState10XY.gif?7.31.11.0.3)
}
.dynamicnavigation .NaviTreeHoverState00 {
	background-position:top left;
	background-repeat:repeat-y;
	padding-left:19px;
	background-image:url(images/dtn/NaviHoverState00Y.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.dynamicnavigation .NaviTreeHoverState10 {
	background-position:top left;
	background-repeat:repeat;
	padding-bottom:6px;
	padding-top:5px;
	background-image:url(images/dtn/NaviHoverState10XY.gif?7.31.11.0.3)
}
.dynamicnavigation .navIcon {
	background-image:url(images/DynamicNavigation/IviewNavIcon.png?7.31.11.0.3);
	height:10px;
	width:16px
}
.dynamicnavigationframe {
	height:200px;
	position:absolute;
	width:500px;
	z-index:500
}
.dynamicnavigationframe .IViewTagFrame00 {
	background-repeat:no-repeat;
	font-size:1px;
	height:5px;
	width:11px;
	background-image:url(images/DynamicNavigation/IViewTagFrame00.png?7.31.11.0.3);
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame03 {
	background-image:url(images/DynamicNavigation/IViewTagFrame03X.png?7.31.11.0.3);
	background-repeat:repeat-x;
	font-size:1px;
	height:5px;
	width:500px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame04 {
	background-image:url(images/DynamicNavigation/IViewTagFrame04.png?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:5px;
	width:12px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame10 {
	background-image:url(images/DynamicNavigation/IViewTagFrame10Y.png?7.31.11.0.3);
	background-repeat:repeat-y;
	font-size:1px;
	height:300px;
	width:11px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame14 {
	background-image:url(images/DynamicNavigation/IViewTagFrame14Y.png?7.31.11.0.3);
	background-repeat:repeat-y;
	font-size:1px;
	height:300px;
	width:12px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame20 {
	background-image:url(images/DynamicNavigation/IViewTagFrame20.png?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:14px;
	width:11px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame23 {
	background-image:url(images/DynamicNavigation/IViewTagFrame23X.png?7.31.11.0.3);
	background-repeat:repeat-x;
	font-size:1px;
	height:14px;
	width:500px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IViewTagFrame24 {
	background-image:url(images/DynamicNavigation/IViewTagFrame24.png?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:14px;
	position:relative;
	width:12px;
	sap-sprite-include:true
}
.dynamicnavigationframe .IviewCloseButStandard {
	font-size:1px;
	height:16px;
	width:16px;
	background-image:url(images/DynamicNavigation/IviewCloseButStandard.png?7.31.11.0.3)
}
.dynamicnavigationframe .IviewCloseButDown {
	font-size:1px;
	height:16px;
	background-image:url(images/DynamicNavigation/IviewCloseButDown.png?7.31.11.0.3);
	width:16px
}
.dynamicnavigationframe .IviewCloseButHover {
	font-size:1px;
	height:16px;
	width:16px;
	background-image:url(images/DynamicNavigation/IviewCloseButHover.png?7.31.11.0.3);
	cursor:pointer
}
.button_arrow {
	background-image:url(images/masthead/ActionButtonArrow.png?7.31.11.0.3);
	background-position:center;
	background-repeat:no-repeat;
	width:12px
}
.Text {
	color:#233866;
	font:normal 11px arial
}
.Bold {
	font-weight:b
}
.Tln {
	background-color:#FFFFFF;
	background-position:top right;
	background-repeat:repeat-x;
	background-image:url(images/tln/BgTabArea00X.gif?7.31.11.0.3)
}
.Tln .MainTable {
	direction:ltr
}
.TlnBottomLine {
	border-bottom:0px solid #B6C1CD
}
.Tln .VerticalAlignCenter {
	height:1px;
	left:0px;
	position:absolute;
	top:50%;
	width:100%;
	text-align:center
}
.Tln .FirstLevel .Menu {
}
.Tln .FirstLevel .Menu.Static {
	text-align:-moz-center
}
.Tln .FirstLevel .Menu.Scrollable {
	overflow:hidden;
	width:100%
}
.Tln .SecondLevel .Menu {
	position:relative
}
#firstLevelScrollable {
	width:1px;
	display:table-cell;
	overflow-x:hidden;
	overflow-y:hidden;
	height:67px
}
#allFirstLevelTabs {
	position:relative;
	width:10000px;
	z-index:0
}
#secondLevelTabs {
}
#secondLevelScrollable {
	overflow:hidden;
	white-space:nowrap;
	width:1px
}
.Tln .FirstLevel .TabWorkCenter {
	cursor:pointer;
	float:left;
	position:relative;
	text-align:-moz-right;
	top:-1px;
	z-index:3;
	height:100%
}
.Tln .FirstLevel .TabHome {
	cursor:pointer;
	float:left;
	height:100%;
	left:0px;
	position:relative;
	z-index:3;
	text-align:-moz-right
}
.Tln .FirstLevel .TransparentCover {
	height:11px;
	left:0px;
	position:absolute;
	top:2px;
	width:11px;
	z-index:20;
	background-image:url(images/tln/IconDragTLN.gif?7.31.11.0.3);
	background-repeat:no-repeat;
	cursor:move
}
.Tln .FirstLevel .Icon_TitleContainer {
	padding:0px 8px 0px 8px;
	text-align:-moz-center;
	float:left
}
.Tln .FirstLevel .DarkSeparator00 {
	background-image:url(images/tln/TabLargeDivider00Y.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y;
	width:2px;
	height:1px
}
.Tln .FirstLevel .DarkSeparator01 {
	background-image:url(images/tln/TabLargeDivider01.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	height:64px;
	width:2px
}
.Tln .FirstLevel .Separator {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	width:1px;
	background-image:url(images/tln/TabDivider.gif?7.31.11.0.3);
	position:relative;
	top:2px;
	height:65px
}
.Tln .SecondLevel .Separator {
	float:left;
	height:18px;
	margin-top:1px;
	width:1px;
	background-image:url(images/tln/GenericDivider.png?7.31.11.0.3);
	background-position:top right
}
.WorkcenterStandard {
	height:48px;
	width:71px;
	background-image:url(images/tln/WorkcenterStandard.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.WorkcenterDown {
	height:48px;
	width:71px;
	background-image:url(images/tln/WorkcenterDown.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.WorkcenterHover {
	height:48px;
	width:71px;
	background-image:url(images/tln/WorkcenterHover.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.HouseStandard {
	height:48px;
	margin:0px 16px;
	width:71px;
	background-image:url(images/tln/HouseStandard.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.HouseDown {
	height:48px;
	margin:0px 16px;
	width:71px;
	background-image:url(images/tln/HouseDown.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.HouseHover {
	height:48px;
	margin:0px 16px;
	width:71px;
	background-image:url(images/tln/HouseHover.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.Tln .FirstLevel .TabHover {
	background-image:url(images/tln/TabHoverX.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x;
	text-decoration:none;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	color:#233866;
	border-top:none;
	background-color:#FFFFFF
}
.Tln .FirstLevel .TabStandard {
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/tln/BgTabArea00X.gif?7.31.11.0.3);
	color:#233866;
	font:normal 11px arial;
	text-decoration:none;
	background-color:#FFFFFF
}
.TabDownContainer {
	display:none;
	height:100%;
	left:0px;
	position:absolute;
	top:1px;
	width:100%;
	z-index:-20;
	background-color:#FFFFFF
}
.TabDown00 {
	background-color:#E4E9F1;
	background-image:url(images/tln/TabDown00.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	height:64px;
	width:7px
}
.TabDown10 {
	background-image:url(images/tln/TabDown10X.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x;
	background-color:#E4E9F1
}
.TabDown20 {
	background-image:url(images/tln/TabDown20.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	width:7px;
	background-color:#E4E9F1
}
.TabBottomBorder {
	border-bottom:1px solid #B6C1CD
}
.TabDownForSub00 {
	background-color:#FFFFFF;
	background-image:url(images/tln/TabDownForSubtabs00.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	height:66px;
	width:7px
}
.TabDownForSub10 {
	background-color:#FFFFFF;
	background-image:url(images/tln/TabDownForSubtabs10X.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x
}
.TabDownForSub20 {
	background-color:#FFFFFF;
	background-image:url(images/tln/TabDownForSubtabs20.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	width:9px
}
.TabDownForSub01 {
	background-color:#FFFFFF;
	background-image:url(images/tln/TabDownForSubtabs01Y.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y
}
.TabDownForSub11 {
	background-color:#FFFFFF;
	background-image:url(images/tln/TabDownForSubtabs11XY.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat
}
.TabDownForSub21 {
	background-color:#FFFFFF;
	background-image:url(images/tln/TabDownForSubtabs21Y.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-y
}
.Tln .SecondLevel .Tab {
	cursor:pointer;
	float:left;
	height:23px;
	text-align:-moz-right
}
.BgSubTabArea {
	background-color:#FFFFFF;
	background-image:url(images/tln/BgSubTabAreaX.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x;
	height:23px;
	position:relative
}
.Tln .FirstLevel .CloseButtonContainer {
	display:none;
	left:0px;
	padding-right:1px;
	padding-top:3px;
	position:absolute;
	top:0px;
	width:100%;
	z-index:21;
	text-align:-moz-right
}
.Tln .FirstLevel .CloseButtonImageStandard {
	height:18px;
	width:18px;
	background-image:url(images/tln/TabCloseStandard.png?7.31.11.0.3);
	background-position:top right;
	background-repeat:no-repeat
}
.Tln .FirstLevel .CloseButtonImageHover {
	height:18px;
	width:18px;
	background-position:top right;
	background-repeat:no-repeat;
	background-image:url(images/tln/TabCloseHover.png?7.31.11.0.3)
}
.Tln .FirstLevel .CloseButtonImageDown {
	height:18px;
	width:18px;
	background-position:top right;
	background-repeat:no-repeat;
	background-image:url(images/tln/TabCloseDown.png?7.31.11.0.3)
}
.Tln .FirstLevel .OverflowTab {
	cursor:pointer;
	display:table-cell;
	height:66px;
	padding:8px 2px 0px 1px;
	position:relative;
	vertical-align:top;
	width:19px
}
.Tln .FirstLevel .OverflowImage {
	height:9px;
	width:12px;
	background-image:url(images/tln/IconTabOverflow.png?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .EndArea {
	text-align:-moz-right;
	vertical-align:middle;
	width:35px
}
.SubtabScroller {
	cursor:pointer;
	height:22px;
	width:20px;
	float:right
}
.SubtabScrollerStandard {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/tln/BgSubTabAreaX.gif?7.31.11.0.3)
}
.SubtabScrollerHover {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/tln/SubtabHoverDownX.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.SubtabScrollerDown {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-x;
	background-image:url(images/tln/SubtabHoverDownX.gif?7.31.11.0.3);
	sap-sprite-include:true
}
.FirstLevelDragHelper {
	text-align:-moz-center;
	background-image:url(images/tln/BgTabArea00X.gif?7.31.11.0.3);
	background-position:top right;
	background-repeat:repeat-x;
	display:none;
	filter:alpha(opacity=75);
	position:absolute;
	-moz-opacity:0.75;
	opacity:0.75
}
.Tln .FirstLevel .DragMarker {
	width:7px;
	float:left
}
.Tln .FirstLevel .DragMarker0 {
	height:4px;
	font-size:3px;
	width:7px;
	background-image:url(images/tln/TabDragMarkerDown.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	filter:alpha(opacity=75);
	sap-sprite-include:true
}
.Tln .FirstLevel .DragMarker1 {
	height:59px;
	width:3px;
	border-right-color:#233866;
	border-right-style:solid;
	border-right-width:1px
}
.GeneralPopupMenu .IconScrollArrowUp {
	height:6px;
	width:10px;
	background-image:url(images/popupMenu/IconScrollArrowUp.png?7.31.11.0.3);
	background-repeat:no-repeat;
	background-position:top left
}
.GeneralPopupMenu .ScrollUpButton .PopUpMenu11 {
	background-color:#FFFFFF;
	border-bottom:1px solid #D1DCE7;
	padding-bottom:5px;
	padding-top:5px;
	cursor:pointer
}
.GeneralPopupMenu .ScrollUpButton .PopUpMenuDown10 {
	border-bottom:1px solid #D1DCE7;
	padding-bottom:5px;
	padding-top:4px;
	background-color:#fcdd82
}
.GeneralPopupMenu .IconScrollArrowDown {
	height:6px;
	width:10px;
	background-repeat:no-repeat;
	background-position:top left;
	background-image:url(images/popupMenu/IconScrollArrowDown.png?7.31.11.0.3)
}
.GeneralPopupMenu .ScrollDownButton .PopUpMenu11 {
	background-color:#FFFFFF;
	border-top:1px solid #D1DCE7;
	padding-bottom:5px;
	padding-top:5px;
	cursor:pointer
}
.GeneralPopupMenu .ScrollDownButton .PopUpMenuDown10 {
	border-top:1px solid #D1DCE7;
	padding-bottom:4px;
	padding-top:5px;
	background-color:#fcdd82
}
.prtlPageConL {
	padding:0px !important
}
.Tln .FirstLevel .TabText {
	padding:0px 8px
}
.Tln .SecondLevel .TabText {
	float:left;
	padding:5px 12px 4px 12px
}
.Tln .FirstLevel .TabDown {
	color:#233866;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	text-decoration:none;
	border-top:none;
	background:none transparent
}
.SubTabStandard {
	background:none transparent;
	color:#233866;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	text-decoration:none
}
.SubTabHover {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-x;
	color:#233866;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	text-decoration:none;
	background-image:url(images/tln/SubtabHoverDownX.gif?7.31.11.0.3)
}
.SubTabDown {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-x;
	color:#233866;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	text-decoration:none;
	background-image:url(images/tln/SubtabHoverDownX.gif?7.31.11.0.3)
}
.Tln .SecondLevel .overflowImageWrapper {
	float:left;
	height:75%;
	position:relative;
	width:18px
}
.Dtn .NavigationListDivider {
	padding:0px 0px;
	width:100%
}
.Dtn .TreeText {
	cursor:pointer;
	white-space:nowrap;
	width:100%
}
.Dtn .TreeTextStandard {
	color:#ffffff;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	text-decoration:none
}
.Dtn .TreeTextHover {
	color:#ffffff;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal
}
.Dtn .TreeTextDown {
	color:#ffffff;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal
}
.Dtn .CNPContainer {
	border-top:1px solid #1A2B53
}
.Dtn .BSServicesContainer {
	padding:7px 19px 9px 19px
}
.Dtn .BSServicesTitle {
	color:#ffffff;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	padding-left:7px;
	text-decoration:none;
	white-space:nowrap
}
.Dtn .BSViewsContainer {
	display:block;
	padding:9px 0px 0px 0px
}
.Dtn .BSSubViewsContainer {
	padding-bottom:5px
}
.Dtn .BSViewTitle {
	color:#ffffff;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	padding:5px 0px;
	text-decoration:none;
	white-space:nowrap
}
.Dtn .BSViewLink {
	color:#ffffff;
	cursor:pointer;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	padding:5px 0px;
	text-decoration:none;
	white-space:nowrap
}
.Dtn .BSSubViewLink {
	color:#ffffff;
	cursor:pointer;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	padding-bottom:5px;
	text-decoration:none;
	white-space:nowrap
}
.Dtn .CollectionContainer {
	padding:7px 19px 9px 19px;
	font-size:11px
}
.Dtn .CollectionTitle {
	color:#ffffff;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	padding-left:7px;
	text-decoration:none;
	white-space:nowrap
}
.Dtn .CollectionLinksContainer {
	display:block;
	padding:9px 0px 0px 18px
}
.Dtn .CollectionLink {
	color:#ffffff;
	cursor:pointer;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	padding-bottom:5px;
	text-decoration:none;
	white-space:nowrap;
	padding-left:3px
}
.Dtn .CollectionOverflowLink {
	color:#ffffff;
	cursor:pointer;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	padding-bottom:5px;
	text-decoration:none;
	white-space:nowrap;
	padding-left:3px
}
.Dtn .SubViewItem .TextContainer {
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap
}
#staticMenuDiv {
	height:100%
}
.TabDownBottomLine {
	border-bottom:1px solid #B6C1CD
}
.Tln .SecondLevel .OverflowImage {
	height:9px;
	width:12px;
	background-image:url(images/tln/IconTabOverflow.png?7.31.11.0.3);
	background-repeat:no-repeat;
	margin-right:auto;
	margin-left:auto
}
.Dtn .IconArrowClosed {
	height:14px;
	width:14px;
	background-image:url(images/dtn/TreeNodeCollapsed.gif?7.31.11.0.3)
}
.Dtn .IconArrowOpen {
	height:14px;
	width:14px;
	background-image:url(images/dtn/TreeNodeExpanded.gif?7.31.11.0.3)
}
.copyrightText {
	color:#666666;
	font-family:Arial;
	font-size:10px;
	font-weight:regular;
	left:37px;
	position:absolute;
	top:305px;
	display:block
}
.TabDownForSubContainer {
	display:none;
	height:100%;
	left:0px;
	position:absolute;
	top:1px;
	width:100%;
	z-index:-20;
	background-color:#E4E9F1
}
.collaborate_text {
	white-space:nowrap;
	margin-left:10px;
	margin-right:10px;
	position:relative;
	text-align:-moz-right;
	top:1px
}
.nova-NovaMenuItemandImage {
	border:1px solid #b3bcca;
	color:#233866;
	display:block;
	font-family:arial;
	font-size:11px;
	height:18px;
	position:relative;
	white-space:nowrap;
	top:11px;
	left:5px
}
.nova_dialog_box  .c01 {
	height:1px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow01Y.png?7.31.11.0.3)
}
.nova_dialog_box  .c11 {
	background-repeat:repeat-x;
	sap-sprite-include:true;
	background-image:url(images/PopupWindow/PopupWindow11XY.png?7.31.11.0.3);
	height:1px;
	width:100%
}
.nova_dialog_box  .c21 {
	height:1px;
	width:24px;
	background-image:url(images/PopupWindow/PopupWindow21Y.png?7.31.11.0.3)
}
.itemNameTextBoxEdited {
	background-color:transparent;
	cursor:text;
	font-family:arial;
	height:18px;
	padding-left:5px;
	padding-right:5px;
	color:#bebebe;
	font-size:11px
}
.itemNameTextBoxStandard {
	background-color:#fefefe;
	cursor:default;
	font-family:arial;
	height:18px;
	padding-left:5px;
	padding-right:5px;
	color:#184376;
	font-size:11px
}
.itemNameViewModeLabel {
	background-color:transparent;
	cursor:default;
	font-family:arial;
	height:18px;
	overflow:hidden;
	padding-left:5px;
	padding-right:5px;
	text-overflow:ellipsis;
	white-space:nowrap;
	word-wrap:text-break;
	color:#184376;
	font-size:11px
}
.CenterHVDiv {
	position:absolute;
	top:50%;
	width:100%;
	height:1px
}
.Dtn .IconArrowZoomOpen {
	height:14px;
	background-image:url(images/dtn/TreeNodeExpandedZoom.gif?7.31.11.0.3);
	width:14px
}
.Dtn .IconArrowZoomClosed {
	height:14px;
	width:14px;
	background-image:url(images/dtn/TreeNodeCollapsedZoom.gif?7.31.11.0.3)
}
.captionText {
	color:#FFFFFF;
	font-family:arial;
	font-size:11px;
	font-weight:bold;
	height:18px;
	position:relative;
	white-space:nowrap;
	top:6px;
	padding:0px 10px;
	display:block
}
.dynamicnavigation .NaviTreeNormalState10 .text {
	color:#ffffff;
	cursor:pointer;
	font:bold 11px arial
}
.dynamicnavigation .NaviTreeHoverState10 .text {
	cursor:pointer;
	font:bold 11px arial;
	color:#ffffff
}
.NovaPopupMenuIFrame {
	position:absolute;
	z-index:1
}
.nova-NovaMenuItem-selected .text {
	color:#184376
}
.canvasBorder {
	background-color:#eaf1f6;
	border:#b6c1cd 1px solid
}
.button_disabled {
	cursor:pointer;
	font-family:arial;
	font-size:11px;
	height:100%;
	text-align:center;
	margin:0px 2px 0px 0px;
	color:#686868
}
.button_disabled .button_left {
	background-image:url(images/PopupWindow/disable/button_disabled_0.gif?7.31.11.0.3);
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px;
	sap-sprite-include:true
}
.button_disabled .button_left_emph {
	float:left;
	height:18px;
	vertical-align:middle;
	width:8px;
	sap-sprite-include:true;
	background-image:url(images/PopupWindow/disable/button_emph_disabled.gif?7.31.11.0.3)
}
.button_disabled .button_middle {
	background-repeat:repeat-x;
	float:left;
	padding:2px 6px 2px 6px;
	text-align:center;
	vertical-align:middle;
	sap-sprite-include:true;
	background-image:url(images/PopupWindow/disable/button_disabled_1.gif?7.31.11.0.3)
}
.button_disabled .button_right {
	float:left;
	height:18px;
	vertical-align:middle;
	width:3px;
	sap-sprite-include:true;
	background-image:url(images/PopupWindow/disable/button_disabled_2.gif?7.31.11.0.3)
}
.IviewControlButtonsContainer {
	padding:2px 2px 1px 2px;
	border-style:solid solid none solid;
	border-width:1px;
	width:16px;
	height:16px;
	float:right;
	background-color:#e7f2fb;
	border-color:#B7D4F9
}
.welcome_text {
	color:#233866;
	font-family:Ariel,Helvetica,sans-serif;
	font-size:11px;
	position:relative;
	top:5px;
	bottom:1px;
	height:11px;
	margin-right:14px;
	text-align:left;
	white-space:nowrap;
	padding-left:11px
}
.welcome_name {
	color:#233866;
	font-family:Ariel,Helvetica,sans-serif;
	font-size:11px;
	font-weight:bold;
	padding-left:0px;
	position:relative;
	height:11px;
	text-align:left;
	white-space:nowrap
}
.BreadcrumbDiv {
	float:left;
	padding:3px;
	text-align:left
}
.ToolbarControls {
	float:right
}
#firstLevelStrechedTab {
	float:left;
	width:3000px;
	height:100%;
	position:relative;
	top:-1px
}
.Tln .FirstLevel .ScrollingArea.Close {
	left:10px;
	position:relative;
	text-align:right;
	width:23px;
	height:66px;
	top:2px;
	background-image:url(images/tln/TabscrollerClosed.png?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn {
	height:21px;
	width:26px;
	position:relative;
	left:-9px;
	top:3px;
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea.Open {
	left:10px;
	position:relative;
	width:40px;
	height:66px;
	top:2px;
	background-image:url(images/tln/TabscrollerOpen.png?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn.fStandard {
	background-image:url(images/tln/TabscrollerRightStandard.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn.fHover {
	background-image:url(images/tln/TabscrollerRightHover.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn.fDown {
	background-image:url(images/tln/TabscrollerRightDown.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn.fDisabled {
	background-image:url(images/tln/TabscrollerRightDisabled.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn {
	height:19px;
	margin-top:-1px;
	width:26px;
	position:relative;
	left:-9px;
	top:2px;
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn.bStandard {
	background-image:url(images/tln/TabscrollerLeftStandard.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn.bHover {
	background-image:url(images/tln/TabscrollerLeftHover.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn.bDown {
	background-image:url(images/tln/TabscrollerLeftDown.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn.bDisabled {
	background-image:url(images/tln/TabscrollerLeftDisabled.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn {
	height:21px;
	margin-top:-1px;
	width:26px;
	position:relative;
	left:-9px;
	top:1px;
	background-repeat:no-repeat;
	cursor:pointer
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn.oStandard {
	background-image:url(images/tln/TabjumperStandard.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn.oHover {
	background-image:url(images/tln/TabjumperHover.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn.oDown {
	background-image:url(images/tln/TabjumperDown.png?7.31.11.0.3)
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn.oDisabled {
	background-image:url(images/tln/TabjumperDisabled.png?7.31.11.0.3)
}
.afpToolBarTop {
}
.dtnTextTree {
	position:absolute;
	top:0px;
	left:0px;
	width:100%
}
.IviewControlButtonsTD {
	width:100%;
	height:17px;
	padding-right:8px
}
.nova_dialog_box_content   .c03 {
	width:24px;
	text-align:right;
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/com.sap.portal.design.portaldesigndata/themes/portal/vossloh_green/AFP/images/PopupWindow/PopupWindow03Y.png?7.31.11.0.3', sizingMethod='scale')
}
.nova_dialog_box_content  .c13 {
	background-repeat:repeat;
	background-image:url(images/PopupWindow/PopupWindow13XY.png?7.31.11.0.3);
	padding:3px 0px 0px 0px;
	width:100%
}
.nova_dialog_box_content {
	color:black;
	font-size:11px;
	font-family:arial
}
.nova_dialog_box_content  .c23 {
	width:24px;
	text-align:left;
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/com.sap.portal.design.portaldesigndata/themes/portal/vossloh_green/AFP/images/PopupWindow/PopupWindow23Y.png?7.31.11.0.3', sizingMethod='scale')
}
.button_inner {
	height:16px
}
.toolbarDivider {
	float:left;
	margin:0px 7px 0px 0px;
	position:relative;
	top:1px;
	width:1px
}
.textIcon {
	margin-right:2px;
	display:inline-block
}
.divLeftNavPanelOpen {
	height:100%;
	display:none;
	position:relative;
	top:-7px
}
.EllipsisText {
}
.Tln .FirstLevel .DragMarker2 {
	background-position:bottom left;
	background-repeat:no-repeat;
	width:7px;
	height:4px;
	sap-sprite-include:true;
	font-size:3px;
	background-image:url(images/tln/TabDragMarkerUp.gif?7.31.11.0.3)
}
.NaviTreeTitleTextDownHoverState {
	text-decoration:normal
}
.filter_applied {
	position:relative;
	top:5px;
	bottom:1px;
	height:11px;
	margin-right:14px;
	text-align:left;
	white-space:nowrap;
	padding-left:3px;
	font-size:11px;
	color:#8b8f96;
	font-family:Ariel,Helvetica,sans-serif;
	font-style:italic
}
.dynamicnavigation .NodeRow {
	cursor:pointer
}
.nova-NovaMenuBarItem .nmbiIcon-Forward {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowForward.png?7.31.11.0.3)
}
.nova-NovaMenuBarItem-Disabled .nmbiIcon-Forward {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowForwardDisabled.png?7.31.11.0.3);
	cursor:default
}
.nova-NovaMenuBarItem .nmbiIcon-Backward {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowBack.png?7.31.11.0.3)
}
.nova-NovaMenuBarItem-Disabled .nmbiIcon-Backward {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowBackDisabled.png?7.31.11.0.3);
	cursor:default
}
.Tln .FirstLevel .TabWorkCenter_SmallTabs {
	cursor:pointer;
	float:left;
	position:relative;
	text-align:-moz-right;
	top:-1px;
	z-index:3;
	height:100%
}
.Tln .FirstLevel .DarkSeparator01_SmallTabs {
	background-image:url(images/tln/TabLargeDivider01.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	width:2px;
	height:42px
}
.Tln .FirstLevel .Separator_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	width:1px;
	background-image:url(images/tln/TabDivider.gif?7.31.11.0.3);
	position:relative;
	top:2px;
	height:42px
}
.WorkcenterStandard_SmallTabs {
}
.WorkcenterDown_SmallTabs {
}
.WorkcenterHover_SmallTabs {
}
.HouseStandard_SmallTabs {
	margin:0px 16px;
	height:42px;
	width:61px;
	background-position:top right;
	background-repeat:no-repeat;
	background-image:url(images/tln/HouseStandardHover.png?7.31.11.0.3)
}
.HouseDown_SmallTabs {
	height:42px;
	width:61px;
	background-position:top right;
	background-repeat:no-repeat;
	background-image:url(images/tln/HouseSelected.png?7.31.11.0.3);
	margin:0px 16px
}
.HouseHover_SmallTabs {
	height:42px;
	width:61px;
	background-position:top right;
	background-repeat:no-repeat;
	background-image:url(images/tln/HouseSelected.png?7.31.11.0.3);
	margin:0px 16px
}
.Tln .FirstLevel .TabHover_SmallTabs {
	background-image:url(images/tln/TabHoverX_STab.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x;
	text-decoration:none;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:normal;
	color:#233866;
	border-top:none;
	background-color:#FFFFFF
}
.TabDown00_SmallTabs {
	background-image:url(images/tln/TabDown00_STab.gif?7.31.11.0.3);
	height:42px;
	background-color:#E4E9F1;
	background-position:top left;
	background-repeat:no-repeat;
	width:7px
}
.TabDown10_SmallTabs {
	background-image:url(images/tln/TabDown10X_STab.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:repeat-x;
	background-color:#E4E9F1
}
.TabDown20_SmallTabs {
	background-image:url(images/tln/TabDown20_STab.gif?7.31.11.0.3);
	background-position:top left;
	background-repeat:no-repeat;
	width:7px;
	background-color:#E4E9F1
}
.TabDownForSub00_SmallTabs {
	background-image:url(images/tln/TabDownForSubtabs00_STab.gif?7.31.11.0.3);
	width:9px;
	height:42px;
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat
}
.TabDownForSub10_SmallTabs {
	background-image:url(images/tln/TabDownForSubtabs10X_STab.gif?7.31.11.0.3);
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-x
}
.TabDownForSub20_SmallTabs {
	background-image:url(images/tln/TabDownForSubtabs20_STab.gif?7.31.11.0.3);
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	width:9px
}
.TabDownForSub01_SmallTabs {
	background-image:url(images/tln/TabDownForSubtabs01Y_STab.gif?7.31.11.0.3);
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-y
}
.TabDownForSub11_SmallTabs {
	background-image:url(images/tln/TabDownForSubtabs11XY_STab.gif?7.31.11.0.3);
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat
}
.TabDownForSub21_SmallTabs {
	background-image:url(images/tln/TabDownForSubtabs21Y_STab.gif?7.31.11.0.3);
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-y
}
.HomeDownForSub00_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	height:41px;
	width:9px;
	background-image:url(images/tln/HomeDownForSubtabs00_STab.gif?7.31.11.0.3)
}
.HomeDownForSub10_SmallTabs {
	background-position:top left;
	background-color:#FFFFFF;
	height:41px;
	background-repeat:repeat-x;
	background-image:url(images/tln/HomeDownForSubtabs10X__STab.gif?7.31.11.0.3)
}
.HomeDownForSub20_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	height:41px;
	width:9px;
	background-image:url(images/tln/HomeDownForSubtabs20_STab.gif?7.31.11.0.3)
}
.HomeDownForSub01_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-y;
	background-image:url(images/tln/HomeDownForSubtabs01Y_STab.gif?7.31.11.0.3)
}
.HomeDownForSub11_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat;
	background-image:url(images/tln/HomeDownForSubtabs11XY_STab.gif?7.31.11.0.3)
}
.HomeDownForSub21_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:repeat-y;
	background-image:url(images/tln/HomeDownForSubtabs21Y_STab.gif?7.31.11.0.3)
}
.HomeDownForSub02_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/tln/HomeDownForSubtabs02__STab.gif?7.31.11.0.3)
}
.HomeDownForSub12_SmallTabs {
	background-position:top left;
	background-color:#FFFFFF;
	background-repeat:repeat-x;
	background-image:url(images/tln/HomeDownForSubtabs12X_STab.gif?7.31.11.0.3)
}
.HomeDownForSub22_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	background-image:url(images/tln/HomeDownForSubtabs22_STab.gif?7.31.11.0.3)
}
.OverflowDividerLeft_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	height:44px;
	width:10px;
	background-image:url(images/tln/SmallTOverflowDividerLeft.gif?7.31.11.0.3)
}
.OverflowDivider_SmallTabs {
	background-color:#FFFFFF;
	background-position:top left;
	background-repeat:no-repeat;
	height:44px;
	width:1px;
	background-image:url(images/tln/SmallTOverflowDivider.gif?7.31.11.0.3)
}
.Tln .FirstLevel .OverflowTab_SmallTabs {
}
.Tln .FirstLevel .OverflowImage_SmallTabs {
}
.Tln .FirstLevel .EndArea_SmallTabs {
	text-align:right;
	vertical-align:middle
}
.Tln .FirstLevel .DragMarker1_SmallTabs {
	height:35px;
	border-right:1px solid #233866;
	width:3px
}
.Tln .FirstLevel .TabText_SmallTabs {
	padding:15px 8px 13px 8px
}
.Tln .FirstLevel .ScrollingArea.Close_SmallTabs {
}
.Tln .FirstLevel .ScrollingArea.Open_SmallTabs {
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn_SmallTabs {
	height:44px;
	width:16px
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn_SmallTabs {
	height:44px;
	width:15px
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn_SmallTabs {
	height:44px;
	width:16px
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn_SmallTabs.fStandard_SmallTabs {
	background-image:url(images/tln/SmallTScrollRightStandard.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn_SmallTabs.fHover_SmallTabs {
	background-image:url(images/tln/SmallTScrollRightHover.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn_SmallTabs.fDisabled_SmallTabs {
	background-image:url(images/tln/SmallTScrollRightDisabled.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .ForwardBtn_SmallTabs.fDown_SmallTabs {
	background-image:url(images/tln/SmallTScrollRightDown.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn_SmallTabs.bStandard_SmallTabs {
	background-image:url(images/tln/SmallTScrollLeftStandard.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn_SmallTabs.bHover_SmallTabs {
	background-image:url(images/tln/SmallTScrollLeftHover.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn_SmallTabs.bDown_SmallTabs {
	background-image:url(images/tln/SmallTScrollLeftDown.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .BackwardBtn_SmallTabs.bDisabled_SmallTabs {
	background-image:url(images/tln/SmallTScrollLeftDisabled.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn_SmallTabs.oStandard_SmallTabs {
	background-image:url(images/tln/SmallTScrollerStandard.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn_SmallTabs.oHover_SmallTabs {
	background-image:url(images/tln/SmallTScrollerHover.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn_SmallTabs.oDown_SmallTabs {
	background-image:url(images/tln/SmallTScrollerDown.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.Tln .FirstLevel .ScrollingArea .OverflowBtn_SmallTabs.oDisabled_SmallTabs {
	background-image:url(images/tln/SmallTScrollerDisabled.gif?7.31.11.0.3);
	background-repeat:no-repeat
}
.shellSearchImage {
	background-image:url(images/masthead/ShellSearch.png?7.31.11.0.3);
	background-position:center center;
	background-repeat:no-repeat;
	height:14px;
	padding:0px;
	width:14px
}
.GeneralPopupMenu .ScrollUpButton .PopUpMenu01 {
	border-bottom:1px solid #D1DCE7;
	cursor:pointer;
	border-left:#838381 1px solid;
	display:table-cell
}
.GeneralPopupMenu .ScrollUpButton .PopUpMenu21 {
	border-bottom:1px solid #D1DCE7;
	cursor:pointer;
	border-right:#838381 1px solid;
	display:table-cell
}
.GeneralPopupMenu .ScrollDownButton .PopUpMenu01 {
	cursor:pointer;
	border-top:1px solid #D1DCE7;
	border-left:#838381 1px solid;
	display:table-cell
}
.GeneralPopupMenu .ScrollDownButton .PopUpMenu21 {
	cursor:pointer;
	border-top:1px solid #D1DCE7;
	border-right:#838381 1px solid;
	display:table-cell
}
.PopupMenuEmptyLine {
	cursor:default;
	height:10px;
	color:#233866;
	font:normal 11px Arial
}
.PopupMenuHorizontalLine {
	padding:0px;
	background-color:#FFFFFF
}
.PopupMenuHorizontalLineDiv {
	height:1px;
	font-size:1px;
	width:100%;
	border-bottom:solid #cfdde8 1px
}
.PopupMenuHorizontalLineRow {
	cursor:default;
	color:#233866;
	font:normal 11px Arial
}
.PopupMenuScrollableDiv {
	overflow:hidden;
	background-color:#FFFFFF
}
.PopupMenuComboArrowTd {
	padding:0px;
	text-align:right;
	background-color:#FFFFFF
}
.PopupMenuNoSuggestionsRow {
	cursor:default;
	color:#233866;
	font:normal 11px Arial
}
.PopupMenuNoSuggestionsTd {
	padding-left:0px;
	background-color:#FFFFFF
}
.PopupMenuNoSuggestionsDiv {
	overflow:hidden;
	white-space:nowrap;
	font-style:italic;
	color:#8b8f96
}
.PopupMenuCategoryTitleLineRow {
	cursor:default;
	color:#233866;
	font:normal 11px Arial
}
.PopupMenuCategoryTitleLineTd {
	padding-left:0px;
	background-color:#FFFFFF
}
.PopupMenuCategoryTitleLineDiv {
	font-family:Arial;
	overflow:hidden;
	white-space:nowrap;
	font-weight:bold;
	color:#65718b;
	font-style:italic
}
.PopupMenuSubMenuItemIcon {
	align:left
}
.PopupMenuHighlightedText {
	background:#fcdd82;
	color:#000000
}
.PopupMenuComboArrowTdHover {
	padding:0px;
	text-align:right;
	color:#233866;
	font:normal 11px Arial;
	background-color:#fcdd82
}
*/
.quickLaunch-container {
	background-color:#F0F8FF;
	/*
	background-image:url(images/masthead/BgTop10X.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	height:33px;
	left:0px;
	position:relative;
	top:0px;
	width:100%;
	sap-sprite-include:true;
	sap-padding:0px 0px 25px 0px;
	padding-right:10px;
	padding-top:1px
	*/
}
/*
.QuickLaunchSearchTitle {
	font:normal 11px arial;
	color:#233866;
	white-space:nowrap;
	display:block;
	padding:7px 1px 7px 1px;
	margin:2px 0px
}
.QuickLaunchTextBox {
	font:normal 11px arial;
	color:#233866;
	padding:1px 7px 0px;
	margin:1px 2px 0px 4px;
	background-color:#ffffff;
	height:18px;
	background-image:url(images/masthead/Search/InputFieldX.gif?7.31.11.0.3);
	border:1px solid #b3bcca;
	width:144px;
	background-repeat:repeat-x
}
.PopupMenuScrollableTd {
	border-left:#838381 1px solid;
	border-right:#838381 1px solid
}
.dynamicNavigationInPlaceFrame .EmbeddedBox00 {
	background-image:url(images/DynamicNavigation/embeddedBox00.gif?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:2px;
	width:6px;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox01 {
	background-image:url(images/DynamicNavigation/embeddedBox01.gif?7.31.11.0.3);
	background-repeat:repeat-y;
	font-size:1px;
	height:100%;
	width:6px;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox02 {
	background-image:url(images/DynamicNavigation/embeddedBox02.gif?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:2px;
	width:6px;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox10 {
	background-image:url(images/DynamicNavigation/embeddedBox10.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	font-size:1px;
	height:2px;
	width:100%;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox12 {
	background-image:url(images/DynamicNavigation/embeddedBox12.gif?7.31.11.0.3);
	background-repeat:repeat-x;
	font-size:1px;
	height:2px;
	width:100%;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox20 {
	background-image:url(images/DynamicNavigation/embeddedBox20.gif?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:2px;
	width:5px;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox21 {
	background-image:url(images/DynamicNavigation/embeddedBox21.gif?7.31.11.0.3);
	background-repeat:repeat-y;
	font-size:1px;
	height:100%;
	width:5px;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame .EmbeddedBox22 {
	background-image:url(images/DynamicNavigation/embeddedBox22.gif?7.31.11.0.3);
	background-repeat:no-repeat;
	font-size:1px;
	height:2px;
	width:5px;
	sap-sprite-include:true
}
.dynamicNavigationInPlaceFrame {
	padding-left:5px;
	padding-right:0px;
	margin-right:-1px
}
.SuggestionItemRowIcon {
	width:14px;
	height:14px;
	align:left
}
.SuggestionItemRowText {
	white-space:nowrap;
	overflow:hidden;
	text-overflow:ellipsis
}
.hyperLinkHover .button_inner {
	padding-left:5px;
	padding-right:5px;
	background-image:url(images/masthead/Search/SearchButton/Hover/HyperLinkButtonHover00X.gif?7.31.11.0.3);
	border:1px solid #B0BACD;
	color:#233866;
	background-repeat:repeat-x
}
.hyperLinkDown .button_inner {
	background-image:url(images/masthead/Search/SearchButton/Down/HyperLinkButtonDown00X.gif?7.31.11.0.3);
	background-color:#F9FCFE;
	background-repeat:repeat-x;
	padding-left:5px;
	padding-right:5px;
	border:1px solid #B0BACD
}
.nova_dialog_box_divider {
	top:10px;
	position:relative
}
.dialog_box_text_tr {
	vertical-align:top
}
.GeneralPopupMenu .PopUpMenuSearchItem01 {
	width:7px;
	background-color:#ffffff
}
.GeneralPopupMenu .PopUpMenuSearchItem21 {
	width:7px;
	background-color:#ffffff
}
.logoff_container {
	display:-moz-box;
	padding:10px 9px 0px 9px
}
.Tln .FirstLevel .TabDown_SmallTabs {
	color:#233866;
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:bold;
	text-decoration:none;
	border-top:none;
	background:none transparent
}
.nova_dialog_box_text {
	color:black;
	font-size:11px;
	position:relative;
	font-family:arial;
	padding:0px 22px
}
.captionTextTd {
	width:237px
}
.providersDownArrow_std {
	background-image:url(images/masthead/ActionButtonArrow.png?7.31.11.0.3);
	background-position:center;
	display:block;
	height:6px;
	margin:6px 1px 0px 1px;
	width:9px;
	background-repeat:no-repeat
}
.quickLaunchSearchButtonNormal {
	display:block;
	padding-left:1px;
	height:16px;
	margin:2px 0px
}
.quickLaunchProvidersButtonNormal {
	display:block;
	height:16px;
	padding:7px 1px;
	margin:2px 0px
}
.quickLaunchButtonHover {
	background-image:url(images/masthead/Search/SearchButton/Hover/HyperLinkButtonHover00X.gif?7.31.11.0.3);
	border:1px solid #B0BACD;
	background-repeat:repeat-x;
	display:block;
	height:16px;
	margin:8px 0px
}
.quickLaunchButtonDown {
	background-image:url(images/masthead/Search/SearchButton/Down/TextButtonDown00X.gif?7.31.11.0.3);
	border:1px solid #B0BACD;
	background-repeat:repeat-x;
	display:block;
	height:16px;
	margin:2px 0px
}
.disabledText {
	color:#686868
}
.nova_nonrounded_dialog_box {
	cursor:default;
	font-size:11px;
	position:absolute;
	width:100%;
	border-color:#253d70;
	border-style:solid;
	border-bottom-width:1px;
	border-left-width:1px;
	border-right-width:1px;
	border-top-width:0px
}
.nova_nonrounded_dialog_box .c10 {
	background-repeat:repeat-x;
	background-image:url(images/PopupWindow/PopupWindow10X.png?7.31.11.0.3);
	sap-sprite-include:true
}
.nova_nonrounded_dialog_box  .c12 {
	width:100%;
	background-image:url(images/PopupWindow/PopupWindow12X.png?7.31.11.0.3);
	background-repeat:repeat-x;
	sap-sprite-include:true
}
.nova_dialog_box .c14 {
	width:100%;
	height:23px;
	background-image:url(images/PopupWindow/PopupWindow14X.png?7.31.11.0.3);
	background-repeat:repeat
}
.PopupMenuComboArrowImage {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowForward.png?7.31.11.0.3);
	display:block;
	height:9px;
	background-repeat:no-repeat;
	width:6px
}
.shellSearchImageDisabled {
	background-image:url(images/masthead/ShellSearchDisabled.png?7.31.11.0.3);
	background-position:center center;
	background-repeat:no-repeat;
	height:14px;
	padding:0px;
	width:14px
}
.providersDownArrow_stdDisabled {
	background-image:url(images/masthead/ActionButtonArrowDisabled.png?7.31.11.0.3);
	background-position:center;
	background-repeat:no-repeat;
	display:block;
	height:6px;
	margin:6px 1px 0px 1px;
	width:9px
}
.coverArea {
	background-color:#000000;
	display:none;
	position:absolute;
	top:0;
	z-index:498;
	opacity:0
}
.modalWindow {
	opacity:0.5
}
.Tln .FirstLevel .TabHome_SmallTabs {
	cursor:pointer;
	float:left;
	height:100%;
	left:0px;
	position:relative;
	z-index:3;
	text-align:-moz-right
}
.hyperLinkDisable .button_inner {
	color:#8B8F96;
	padding:1px 6px 1px 6px;
	cursor:default
}
.dialog_box_body {
	height:100%
}
html {
	height:100% !important;
	margin:0 !important;
	padding:0 !important;
	width:100% !important;
	overflow:auto
}
div #imagePlaceHolder {
	overflow:hidden
}
.OuterFrame .placeHolder {
	height:5px;
	overflow:hidden;
	width:5px;
}
.hyperlink_arrow_left {
	background-position:center;
	width:6px;
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowBack.png?7.31.11.0.3);
	position:relative;
	padding:0px 5px;
	background-repeat:no-repeat
}
.hyperLinkDisable .hyperlink_arrow_left {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowBackDisabled.png?7.31.11.0.3)
}
.hyperlink_arrow_right {
	background-position:center;
	width:6px;
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowForward.png?7.31.11.0.3);
	position:relative;
	padding:0px 5px;
	background-repeat:no-repeat
}
.hyperLinkDisable .hyperlink_arrow_right {
	background-image:url(images/NovaMenuBar/MenuBarItem/ArrowForwardDisabled.png?7.31.11.0.3)
}
.GeneralPopupMenu .PopUpMenuDisabled11 {
	background-color:#FFFFFF;
	color:#8B8F96;
	padding:3px 2px
}
.GeneralPopupMenu .PopUpMenuDownDisabled10 {
	padding:3px 2px;
	color:#8B8F96;
	font:normal 11px Arial;
	background-color:#DDE1EC
}
.GeneralPopupMenu .PopUpMenuDownDisabled20 {
	width:7px;
	background-color:#DDE1EC
}
.GeneralPopupMenu .PopUpMenuDownDisabled00 {
	width:7px;
	background-color:#DDE1EC
}
.hyperLinkDisable .button_inner {
	color:#8B8F96;
	padding:1px 6px 1px 6px;
	cursor:default
}
.GeneralPopupMenu .PopUpMenuItemSeperator {
	height:1px;
	background-color:#CFDDE8
}
.menu_item_li_container {
	float:left;
	display:inline
}
.menu_item_ul_container {
	display:inline;
	list-style:none;
	float:left;
	width:100%
}
.Dtn .dtnTreeContainer {
	border-bottom:#ffffff;
	border-top:#ffffff
}
*/

.disabledText {
	color:#7bb082;
}

</style>