<%@ page session="false"%>
<%@ taglib uri="/SapLogon" prefix="sap"%>

<jsp:useBean id="logonLocale" class="com.sap.engine.applications.security.logon.beans.ResourceBean" scope="request" />

<%@ include file="/frame_enabled.txt" %>
<%
  String webpath = (String) request.getAttribute("logon.application.real.path");
%>

<%
  //In case of NWBC we must deliver just the inner content without any frame around it.
  //No margins to the left and top of the page is required as well. 
  //See sap_user_agent.txt about details for distinguishing nwbc
  boolean isRTLMode = false;
  boolean uiFrameVisible = true;
  String uiFrameAllign = "center";
  String uiFrameTopMargin = "margin-top:50px;";
%>
<%
//In case of Mobile use, or other devices, we must distinguish between each device type and render the relevant Login screen.
// The DeviceType types are hard-coded in the IDeviceType and the DeviceGroup can be manually changed.
// In any case, the JSP needs to be manually changed in order to  
String DeviceGroup = (String)request.getAttribute("DeviceGroup");
String DeviceType = (String)request.getAttribute("DeviceType");
// Was the device service used at all.
boolean otherDevicesEnabled = DeviceGroup != null || DeviceType != null;
// If otherUiLoaded is false, the default login page will be loaded, otherwise a specific login page will be displayed.
boolean otherUiLoaded = false;
%>
<%@ include file="/sap_user_agent.txt"%>
<%
// Here we check which device is in use, and build a login page accordingly.
// If we can't distinguish which device type is in use, we load the default desktop login page.
if (otherDevicesEnabled) {
%>
<%@ include file="/mobile/idpSelectionMobile.jsp" %>
<% } %>
<% if (!otherUiLoaded) {%>

<table id="tblFrmUI" width="790px" valign="middle" dir="ltr" align="<%=uiFrameAllign%>" cellPadding="0" cellSpacing="0" style="background-color:#ffffff;<%=uiFrameTopMargin%>">
  <%
    if (uiFrameVisible) {
  %>
  <tr>
    <td><img src="<%=webpath%>layout/lf_tl.png" width="29" height="32"></td>
    <td background="<%=webpath%>layout/lf_st.png"></td>
    <td><img src="<%=webpath%>layout/lf_tr.png" width="27" height="32"></td>
  </tr>
  <%
    }
  %>
  <tr>
    <%
      if (uiFrameVisible) {
    %>
    <td background="<%=webpath%>layout/lf_sl.png"></td>
    <%
      }
    %>
    <td width="100%">
    <%
      if (isRTLMode) {
    %>
    <table id="tblInnerCnt" dir="rtl" cellpadding="0" cellspacing="0">
      <%
        } else {
      %>
      <table id="tblInnerCnt" dir="ltr" cellpadding="0" cellspacing="0">
        <%
          }
        %>
        <tr>
          <td valign="top">
          <div class="urBrandImage"><sap:brandimage type="main" /></div>
          </td>
          <td width="100%"></td>
          <td>
          <table height="360px" cellPadding="0" cellSpacing="0">
            <tr>
              <td valign="top">
              <div class="urProductName"><sap:brandimage type="second" /></div>
              </td>
            </tr>
            <tr>
              <td valign="top" align="left">
              <div class="urLogonData">
              <table class="urLogonTable" cellSpacing="3px" cellPadding="0" valign="top">
                <tr>
                  <td>
                  <div class="urMessageArea">
                  <div class="urMsgBarErr"><sap:errormsg styleClass="urTxtMsg" imageClass="urMsgBarImgOk" imageHeight="12" imageWidth="12" /></div>
                  </div>
                  </td>
                </tr>
                <tr>
                  <td><sap:form type="discoverIdPForm">
                    <%
                      if (isRTLMode) {
                    %>
                    <input type="hidden" name="sap_rtl" value="true">
                    <%
                      }
                    %>
                    <table width="100%">

                      <tr>
                        <td width="1%"><sap:label type="saml2IdP" styleClass="urLblStdNew" flagReqClass="urLblReq" /></td>
                        <td><sap:select type="saml2IdP" styleClass="urDdlWhl" size="1"></sap:select></td>
                        <td width="100%">&nbsp;</td>
                      </tr>

                      <tr>
                        <td colspan="2" align="right"><sap:button type="saml2IdP" styleClass="urBtnStdNew" /><sap:button type="skipIdP" styleClass="urBtnStdNew" /></td>
                        <td>&nbsp;</td>
                      </tr>

                    </table>
                  </sap:form></td>
                </tr>
                <tr>
                  <td><sap:form type="skipIdPForm">
                  </sap:form></td>
                </tr>
              </table>
              </div>
              </td>
            </tr>
            <tr>
              <td valign="bottom">
              <div class="urCopyrightFrame">
              <div class="urCopyrightText"><%=logonLocale.get("COPY_RIGHT")%></div>
              <div class="urCopyrightImage"><img src="<%=webpath%>layout/sap_logo.png" alt="<%=logonLocale.get("SAPAG")%>" title="<%=logonLocale.get("SAPAG")%>" width="55" height="27"></div>
              </div>
              </td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      </td>
      <%
        if (uiFrameVisible) {
      %>
      <td background="<%=webpath%>layout/lf_sr.png"></td>
      <%
        }
      %>
      </tr>
      <%
        if (uiFrameVisible) {
      %>
      <tr>
        <td><img src="<%=webpath%>layout/lf_bl.png" width="29" height="32"></td>
        <td align="center" background="<%=webpath%>layout/lf_sb.png"><span class="clip"><img src="<%=webpath%>layout/lf_clip.png" width="298" height="32"></span></td>
        <td><img src="<%=webpath%>layout/lf_br.png" width="27" height="32"></td>
      </tr>
      <%
        }
      %>
    </table>

<% } %> 	
	
    <script type="text/javascript">
<!--		
  var docDir = document.dir;    
  if(docDir=="rtl" || docDir=="RTL"){   
     var elTableCnt = document.getElementById("tblInnerCnt");
     if(elTableCnt!=undefined){
       elTableCnt.style.direction="rtl";        
     }     
  }  
  var isFormSubmitted = false;
  if( document.forms ) {		
    document.forms[0].onsubmit=function(){
      if( isFormSubmitted ) {
        return false;
      } else {
        isFormSubmitted = true;
        return true;
      }
    }
  }    
-->
</script>