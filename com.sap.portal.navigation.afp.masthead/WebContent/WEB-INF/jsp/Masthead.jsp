<%@ page session="false" %>
<jsp:useBean id="mastHeadBean" class="com.sap.portal.navigation.afp.MastHeadBean"  scope="request"></jsp:useBean> 
<!--   include con los estilos CSS personalizados -->
<%@ include file="Masthead_style_Vossloh.jsp" %> 

<!-- BEGIN Masthead -->
<div>	
		<table id="mastheadEntry" style="width:100%" cellpadding="0" cellspacing="0">
			<tr>
			<%
				if (mastHeadBean.isShowLogo()) {
			%>
				<td class="logobar_container" id ="logobar_container">
					<div id ="logo" class="logoImg"></div>
				</td>
			<%
				}
			%>			
				<td class="space_container" id="space_container">
					<img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif" style= "height:28px" />
				</td>
				<%if ( mastHeadBean.isShowCollaborateValue()) {%>
					<td nowrap="nowrap" class="collaboration_container" id ="collaborate_container">
					<% if (mastHeadBean.isPreview()) { %>
								<span id="collaborate" class="collaboration_link cl_active"  style="margin-right:10px;" tabindex=0>
					 <% }else {%>
						<span id="collaborate" class="collaboration_link cl_active" onclick ="AFPMasthead.launchCollaboration();" onmouseover="AFPMasthead.changeLinkToOverState('collaborate');" onmouseout="AFPMasthead.changeLinkToRegularState('collaborate');" tabindex=0>
					<%}%>
						    <%= mastHeadBean.getCollaborateLinkTitle() %>
						</span>					
					</td>				
				<%}%>
				
				<%if (mastHeadBean.isEnableQuickLaunch()) {%>
					<td id="quickLaunchContainer" class="quickLaunch-container">
						<table style="width:100%" cellpadding="0" cellspacing="0">
							<tr>
								<td><span class="QuickLaunchSearchTitle"><%= mastHeadBean.getQlSearchTitle() %></span></td>
								<td><input type="textbox" value="<%= mastHeadBean.getQlLoadingMessage() %>" disabled="true" id="quickLaunchText" class="QuickLaunchTextBox disabledText"/></td>
								<td style="padding-top: 1px;"><span class="quickLaunchSearchButtonNormal" id="searchButton" tabIndex="0"><span class="shellSearchImageDisabled" id="searchButtonImageSpan" style="display:block;"></span></span></td>
								<td style="padding-top: 1px;"><span class="quickLaunchProvidersButtonNormal" id="providersButton" tabIndex="0"><span id="providersDownArrow" class="providersDownArrow_stdDisabled"></span></span></td>

							</tr>
						</table>
					</td>
				<%}%>
				
			  <%if (mastHeadBean.isPortalPlaceMode()) { %>
					<td nowrap="nowrap" class="hyperlink_container" id ="back_to_main_container">
							<span class="hyperlink_divider"><img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif"/>
							</span><span id="back_to_main" class = "logoff_container"></span>
					</td>
			  <%}%>
			  
			  <%if (mastHeadBean.isShowNewWindowValue()) {%>
					<td nowrap="nowrap" class="hyperlink_container" id ="new_window_container" style="overflow: hidden;">
							<span class="hyperlink_divider">
							     <img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif"/>
							</span>
							 <span id="new_window" class="logoff_container" style="margin-top:0px;">
							 <% if (mastHeadBean.isPreview()) { %>
								<%= mastHeadBean.getNewSessionTitle() %>
					 		 <% } %>
					 		 </span>
					</td>
			   <%}%>
			   
			   <%if (mastHeadBean.isShowSAPStoreLink()) {%>
   					<td nowrap="nowrap" class="hyperlink_container" id ="SAP_store_link_container" style="overflow: hidden;">
						<span class="hyperlink_divider">
					     <img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif"/>
						</span>
						<span id="SAPStoreLink" class="logoff_container" style="margin-top:0px;">
							<% if (mastHeadBean.isPreview()) { %>
								<%= mastHeadBean.getSAPStoreURLTitle() %>
					 		 <% } %>
		    	 		 </span>
					</td>
				<%}%>	
	           <%if (mastHeadBean.isShowHelpLink() && mastHeadBean.isShowHelpCenter()) {%>
				<td nowrap="nowrap" class ="hyperlink_container" id="logout_container">
					<span class="hyperlink_divider"><img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif"/></span>
					<span id="helpLink" class="logoff_container" onclick="AFPMenubar.onOpenHelpCenter();" style="margin-top:0px;">
					</span>
				</td>
				<%}%>
			   
			   <%if (mastHeadBean.isShowLogInLogOffValue()) 
			   { 
				 	if (mastHeadBean.isAnonymous())	{%>
			   		<td nowrap="nowrap" class ="hyperlink_container" id="logout_container">
						 <span class="hyperlink_divider"><img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" id ="search_blank_gif"/>
						 </span> 
						<span id="logon" class="logoff_container">
						<% if (mastHeadBean.isPreview()) { %>
						 	<%= (mastHeadBean.getLogOffTitle()) %>				 		
					   	<% } %>
					   </span>	 
					</td>	
							   					   		
			   	  <%} else {%>
			  		<td nowrap="nowrap" class ="hyperlink_container" id="logout_container">
						 <span class="hyperlink_divider"><img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif"/>
						 </span>
						 <span id="logoff" class="logoff_container">	
					   <% if (mastHeadBean.isPreview()) { %>
						 	<%= (mastHeadBean.getLogOffTitle()) %>				 		
					   <% } %>
					   </span>
					</td>
	 		    <% } %>
			<% } %>
			</tr>
		</table>
	 	
 	<%if ( mastHeadBean.isShowMenuBarContainer()) {%>
		<table id="menubarPanelElement" style="width:100%" cellpadding="0" cellspacing="0">
			<tr>				
				<td class="menubar-container" id="menubar" style="width:100%; padding-left:5px;" nowrap="nowrap"></td>

				<td class="menubar-container" style="width:100%"></td>
				<%if (mastHeadBean.isShowView()) {%>
					<td>							
		                <div class="menubar-container" id="filter_applied_container">
		                	<span id="filter_applied" class="filter_applied"></span>
		                </div>				                							
					</td> 
					<td>
						<span class="search_divider" id="filter_applied_divider" style="display:none;">
							<img src="/com.sap.portal.navigation.afp.masthead/images/blank.gif" alt="" id ="search_blank_gif"/>
						</span>
					</td>
				<%}%>
				<%if (mastHeadBean.isShowLoggedAsMessage()) {%>
					<td>
		                <div class="menubar-container" id="welcome_message_container">
		                	
					             <% if (mastHeadBean.isPreview()) { %>
						 	        <%= (mastHeadBean.getWelcomeMsgTitle()) %>				 		
					             <% } %>
					   	</div>
		            </td>
            	<%}%>	            	
			</tr>
		</table>		
	<%}%>
</div>
<!-- END MASTHEAD -->
