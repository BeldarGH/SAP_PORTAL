
function notifyFinishLoading() 
{
	if (typeof(AFPLayoutAPI) !== 'undefined'){
		AFPLayoutAPI.notifyOnFinishLoading('AFPMasthead');
	}
}

var callAddWidgets = function(argument) 
{
	if (LSAPI.AFPPlugin.configuration==null)
		waitForObject('LSAPI.AFPPlugin.configuration', addWidgets, argument);
	else
		addWidgets(argument);
}

function openNewWindow() 
{
	LSAPI.AFPPlugin.service.openNewPortalWindow();
}

function openSAPStoreWindow()
{
	window.open(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue("AFPMasthead", "SAPStoreURL"));
	
}

var closePortalPlace = function() 
{
	var backTargetComponentURL = LSAPI.AFPPlugin.configuration.getAttributeValue("portalPlaceBackUrl");
	portalUrl =  document.location.protocol + "//" +document.location.host + backTargetComponentURL;				  	
	EPCM.getSAPTop().document.location.href=portalUrl;      
	return;
}

var updateWidgetsMenus = function(collectionArr) {
	
	var configObject = AFPMasthead.getMenusConfiguration();
	if (!JSUtils.isEmpty(collectionArr)) {
		configObject.menuItems = collectionArr; // = configString.substr(0,configString.length-1);
	}
	
	drawMenus(configObject);
}

var AFPMasthead = function() 
{
	var helpTitle 						= '';
	var filterAppliedTitle 				= '';
	var filterAppliedTooltip 			= '';
	var quickLaunchCombo 				= null;
	var menusConfiguration 				= '';
	var helpUrl  						= '';
	var providersButtonId 				= "providersButton";
	var searchButtonId 					= "searchButton";
	var searchButtonImageSpan			= "searchButtonImageSpan";
	var quickLaunchId 					= '';
	var searchProvidersList 			= null;
	var searchProvidersListAsCollection = null;
	var providrsMenu					= null;
	var COMPONENT_KEY					= "AFPMasthead";
	var AFP_MASTHEAD_STRINGS            = "AFPMasthead.AFPMastheadStrings"
	var WIDGETS_COMPONENT_KEY			= "AFPWidgets";
	var mastheadStrings = {}; 	
	var initMastheadAccessibility = false;
	var firstTimeFlag = true;
	var menusCollections = null;
	var isPreview = false;

	var init = function( i_helpTitle, i_helpUrl, i_filterAppliedTitle, i_filterAppliedTooltip, i_quickLaunchTextId, i_menusConfig) 
	{
		helpTitle 				= i_helpTitle;
		helpUrl 				= i_helpUrl;
		filterAppliedTitle 		= i_filterAppliedTitle;
		filterAppliedTooltip 	= i_filterAppliedTooltip;
				
		if( i_quickLaunchTextId ) {// load quick launch combo
			initQuickLaunch( i_quickLaunchTextId );
		}
		
		//TODO: remove TIMEOUT
		if (AccessibilityManager.isAccessibilityModeOn()) {
			window.setTimeout( "JSUtils.$('mastheadEntry').focus();", 1500 );
		}
		menusConfiguration = i_menusConfig;
		
		if (!isPreview) {
			initMastheadAcc();
		}
		
//		notifyFinishLoading();
		if (typeof(AFPLayoutAPI) !== 'undefined'){
			AFPLayoutAPI.notifyOnFinishLoading('AFPMasthead');
		}		
		
	}

	
	function initCollaborate() 
	{
		var collaborateLinkTitle = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "collaborateLinkTitle");
		collaborateHyperLink = JSUtils.$("collaborate_container");
		if (collaborateHyperLink == null) {
			return;
		}
		
		collaborateHyperLink.title = collaborateLinkTitle;
		
		collaborateHyperLink.onkeydown =function(e)  {
			var evt = e || window.event;
			if(evt.keyCode == AccessibilityManager.KEY_ENTER || evt.keyCode == AccessibilityManager.KEY_SPACE)
			{								
				launchCollaboration();						
			}
		}
	
		//TODO: CSS! why margin defined here?
		JSUtils.$('collaborate').style.marginRight = '10px';
	}
	
	
	//@vadim SP3
	var onLoad = function() 
	{
		mastheadStrings = LSAPI.AFPPlugin.configuration.getClientSideAttributes(AFP_MASTHEAD_STRINGS);
		isPreview = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "isPreview"));
		var customLogoURL = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "customLogoURL");
		var showLogo = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showLogo"));
	    var showNewWindowValue = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showNewWindowValue"));
	    var showSAPStoreLink = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showSAPStoreLink"));
	    var SAPStoreURL = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "SAPStoreURL");
	    var SAPStoreURLTitle = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "SAPStoreURLTitle");
		var showCollaborateValue = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showCollaborateValue"));
	    var isShowHelpLink  = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showHelpLink"));
	    var isShowHelpCenter  = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(WIDGETS_COMPONENT_KEY, "com.sap.portal.navigation.afp.showHelpCenter"));
	    var showLogInLogOffValue = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showLogInLogOffValue"));
	    var isAnonymous	= JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "anonymous"));    
	    var isShowLoggedAsMessage = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "isShowLoggedAsMessage"));
	    var showMenuBarContainer = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "isShowMenuBarContainer")); 
	    var isPortalPlaceMode= JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "isPortalPlaceMode"));
	    
		if (!isPreview)	{	
			initMastheadAccessibility = true;
			firstTimeFlag = true;
			menusCollections = null;		
			EPCM.getSAPTop().LSAPI.AFPPlugin.controller.registerOnNavigate(AFPMasthead.callInit);
		}
		
		if (showLogo) {
			setLogoImg(customLogoURL);
		}
		
		// Collaborate
		if (showCollaborateValue){
			initCollaborate();
		}
		
		 if (isPortalPlaceMode && !isPreview)  {
			var backToMainPortalLink = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "backToMainPortalLink");		
			var backLinkToolTip = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "PORTAL_PLACE_BACK_ACC_TOOLTIP");		
			var backLinkElement = NovaHyperlink.createNovaHyperlink ("back_to_main", backToMainPortalLink);	
			if (backLinkElement!= null) { 
				backLinkElement.title = backToMainPortalLink;
				AccessibilityManager.setElementTabIndex(backLinkElement);
				
				AccessibilityManager.setElementAccessibilityTooltip(backLinkElement, backLinkToolTip);										
				backLinkElement.onkeydown = function(e) {
					var evt = e || window.event;
					if(evt.keyCode == AccessibilityManager.KEY_ENTER || evt.keyCode == AccessibilityManager.KEY_SPACE) {								
						closePortalPlace();						
					}
				}
				backLinkElement.onmouseup = closePortalPlace;
			}
		 }		
		
		 if (showNewWindowValue) {
			 var newWindowHyperlink = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "newWindowHyperlink");
			 var newWindowElement = NovaHyperlink.createNovaHyperlink ("new_window",newWindowHyperlink);
				newWindowElement.title = newWindowHyperlink;									

				newWindowElement.onkeydown = function(e) {
					var evt = e || window.event;
					if(evt.keyCode == AccessibilityManager.KEY_ENTER || evt.keyCode == AccessibilityManager.KEY_SPACE){								
						openNewWindow();						
					}
				}
				newWindowElement.onmouseup = function(e) {openNewWindow();}							
		 }
		 
		 if (showSAPStoreLink) {
			 var SAPStoreHyperlink = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "SAPStoreURLTitle");
			 var SAPStoreElement = NovaHyperlink.createNovaHyperlink ("SAPStoreLink",SAPStoreHyperlink);
			 SAPStoreElement.title = SAPStoreURLTitle;									

			 SAPStoreElement.onkeydown = function(e) {
					var evt = e || window.event;
					if(evt.keyCode == AccessibilityManager.KEY_ENTER || evt.keyCode == AccessibilityManager.KEY_SPACE){								
						openSAPStoreWindow();						
					}
				}
			 SAPStoreElement.onmouseup = function(e) {openSAPStoreWindow();}							
		 }
		
 
		 if (isShowHelpLink && isShowHelpCenter && !isPreview) {
			var helpLinkHyperLink =  LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "helpLinkHyperLink");
			helpLinkElement = NovaHyperlink.createNovaHyperlink ("helpLink", helpLinkHyperLink);
			helpLinkElement.title = helpLinkHyperLink;
			var accHelp = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "ACC_HELP");
			AccessibilityManager.setElementAccessibilityTooltip(helpLinkElement, accHelp);
		 }

		 

		 if (showLogInLogOffValue && !isPreview) {
			if   (isAnonymous) {	
				var logOnTextStr = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "logOnTextStr");
				logonLinkElement = NovaHyperlink.createNovaHyperlink("logon", logOnTextStr);
				logonLinkElement.title = logOnTextStr;
				
				var logOnToolTip = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "LOG_ON_TOOLTIP");
				AccessibilityManager.setElementAccessibilityTooltip(logonLinkElement, logOnToolTip);
	
				logonLinkElement.onmouseup = function(e) {
					var loginURL = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "LOGIN_URL");
					location.replace(loginURL);
				}				
	
				logonLinkElement.onkeydown = function(e) {
					this.onmouseup();
				}
				
			} else  {
				var logoffHyperlink = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "logoffHyperlink");
				logoffLinkElement = NovaHyperlink.createNovaHyperlink ("logoff", logoffHyperlink);
				logoffLinkElement.title = logoffHyperlink;
				
				var logoffTitle = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "logoffTitle");
				var logoffMessage = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "logoffMessage");
				var accButtonYes = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "ACC_BUTTON_YES");
				var accButtonNo = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "ACC_BUTTON_NO");
				var logoffYesButton = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "logoffYesButton");
				var logoffNoButton = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "logoffNoButton");
				
				logoffLinkElement.onkeydown = function(e) {
					var buttonsArray;
					var evt = e || window.event;
					if(evt.keyCode == AccessibilityManager.KEY_ENTER || evt.keyCode == AccessibilityManager.KEY_SPACE)
					{								
						//TODO CSS: Why 260, 126 hard coded?
						buttonsArray = NovaDialogBox.createLogoffDialogBox(logoffTitle, logoffMessage, logoffYesButton, logoffNoButton, '260','126');
						AccessibilityManager.setItemOpenerElement(logoffLinkElement);
						var buttonYes = buttonsArray[0];
						AccessibilityManager.setElementAccessibilityTooltip(buttonYes, logoffMessage + " " + accButtonYes);
						var buttonNo = buttonsArray[1];
						AccessibilityManager.setElementAccessibilityTooltip(buttonNo, accButtonNo);								
					}
				};
				logoffLinkElement.onmouseup = function(e) {
					var evt = e || window.event;
					NovaDialogBox.createLogoffDialogBox(logoffTitle, logoffMessage, logoffYesButton, logoffNoButton, '260', '126');
				}
			}
		 }
		   
		if (showMenuBarContainer && !isPreview) 
		{
			AFPMenubar.drawMenubar("menubar");
			var welcomeMessageMarkUp = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "welcomeMessageMarkUp");			
			var welcomeMessageTitle = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "welcomeMessageTitle");			
			//is ShowLoggedAsMessage
			if (isShowLoggedAsMessage) {
		    	var welcomeMessageElm = JSUtils.$('welcome_message_container');
				welcomeMessageElm.innerHTML = welcomeMessageMarkUp;
				welcomeMessageElm.title= welcomeMessageTitle;
				AccessibilityManager.setElementTabIndex(welcomeMessageElm);
				AccessibilityManager.setActualSkipableElement(welcomeMessageElm, 'menubarPanelElement');
			}
		}
	}	
	
	var getMastheadStrings = function() {return mastheadStrings;};

	// init all not preview scripts
	var initNoPreview = function() {
		this.initMastheadAccessibility = true;
		this.firstTimeFlag = true;
		menusCollections = null;		
		EPCM.getSAPTop().LSAPI.AFPPlugin.controller.registerOnNavigate(callInit);
	}
	
	var callInit = function()
	{
		if (firstTimeFlag)
		{
			firstTimeFlag = false;
			var quickLaunchTextId = null;
			var enableQuickLaunch = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "enableQuickLaunch"));
			if( enableQuickLaunch ) {
				quickLaunchTextId = "quickLaunchText";
			}
			
			var menusConfig = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "menusConfig");
			var miHelp = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "MI_HELP");
			var helpUrl = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "HELP_URL");
			var filterAppliedTitle = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "filterAppliedTitle");
			var filterAppliedTooltip = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "filterAppliedTooltip");

			AFPMasthead.init(miHelp, helpUrl, filterAppliedTitle, filterAppliedTooltip, quickLaunchTextId, menusConfig);
	        
			this.showView = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "showView"));
			if (showView) {
	         	LSAPI.getVisualPlugin().registerScreenModeChangeNotification(AFPMenubar.handleFullScreen);
	       	}
	       	
			top.LSAPI.getTabsetPlugin().registerOnTabsetSwitch(AFPMasthead.applyTabsetFilter);
	   		AFPMasthead.applyTabsetFilter();			
		}
	}
	
	var onMenusChange = function(collectionArr) {		
	  menusCollections = collectionArr;
	  if (!firstTimeFlag) {
	  	updateWidgetsMenus(menusCollections);
	  }
	}

	var launchCollaboration = function() 
	{
		var collaborateComponent = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "collaborateComponent");
		var isByD = JSUtils.getBooleanValue(LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "isByD"));
		var collaborateLinkTitle = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "collaborateLinkTitle");
		
		if (collaborateComponent != null) 
		{
			if (isByD) 
			{
				var collaborateComponentURI = collaborateComponent;
				var winFeatures = 'toolbar=no,resizable=yes';
				LSAPI.AFPPlugin.service.navigate(collaborateComponentURI, "6", null, null, winFeatures);

			} 
			else
			{
				var clpComponentURI = LSAPI.AFPPlugin.configuration.getClientSideAttributeValue(COMPONENT_KEY, "clpComponentURI");
				clpParameter = 'height=510,width=322,location=No,menubar=No,resizable=Yes,scrollbars=Yes,status=No,titlebar=No,toolbar=No,left=' + (screen.width / 3) + ',top=180' ;
				clp_wnd = window.open( clpComponentURI, 'STATIC_CLP_WINDOW_TITLE', clpParameter);
				clp_wnd.focus();
			}
		}
	}	
	
	function setLogoImg(customLogoURL) {
		if (JSUtils.isEmpty(customLogoURL)) {
			return;
		}
		var oLogo = JSUtils.$('logo');
		if (oLogo == null) {
			return;
		}
		if(JSUtils.BrowserDetection.is_ie) {
			oLogo.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + customLogoURL + "',sizingMethod='crop')";
		}	
		else {
			oLogo.style.backgroundImage = "url(" + customLogoURL + ")";
		}				
	}
	
	

	var changeLinkToOverState = function (crumbId) {
		JSUtils.$(crumbId).className = "collaboration_link cl_inactive cl_hover";
	};
	
	var changeLinkToRegularState = function (crumbId) {
		JSUtils.$(crumbId).className = "collaboration_link cl_active";
	};	
	
	
	var initMastheadAcc = function()
	{
		var mastheadElement = AccessibilityManager.getElementById('mastheadEntry');
		AccessibilityManager.setElementTabIndex(mastheadElement);
		AccessibilityManager.setElementAccessibilityTooltip(mastheadElement, mastheadStrings.mastheadToolTip);
		AccessibilityManager.setSkipableElement(AccessibilityManager.MASTHEAD_ENTRY, mastheadElement);
		AccessibilityManager.setEntryId(AccessibilityManager.MASTHEAD_ENTRY, mastheadElement.id)
		AccessibilityManager.setElementAccessKey(mastheadElement, "M");
		var buttonlogoff = JSUtils.$('buttonlogoff');
		if( buttonlogoff )
		{
			AccessibilityManager.setElementAccessibilityTooltip(JSUtils.$('buttonlogoff'), mastheadStrings.accLogOffLinkString);
		}
		var collaborate = JSUtils.$('collaborate');
		if( collaborate )
		{
			AccessibilityManager.setElementAccessibilityTooltip(JSUtils.$('collaborate'), mastheadStrings.accCollaborateLinkString);
		}
		var buttonnew_window = JSUtils.$('buttonnew_window');
		if( buttonnew_window )
		{
			AccessibilityManager.setElementAccessibilityTooltip(JSUtils.$('buttonnew_window'), mastheadStrings.accNewWindowLinkString);
		}
	}
			
	var getCurrentInitialNodeName = function() 
	{
		var selectedPath 	= LSAPI.AFPPlugin.model.getCurrentSelectedPath();
		var wcNode 			= selectedPath[0];
		
		return wcNode.getName();
	}

	var onOpenLearningCenter = function() 
	{
		if (typeof(parent.EPCM) != 'undefined') {
			var learningCenterURL = 'OBN://BOTechnicalName=LearningCenter/Operation=DisplayLearningCenter';
			var learningCenterWinFeatures = 'toolbar=no';
			if (LSAPI.AFPPlugin.configuration != null) {
				var attrValue = LSAPI.AFPPlugin.configuration.getAttributeValue("learningCenterNavTarget");
				if ( attrValue != null)
					learningCenterURL = attrValue;
					
				attrValue = LSAPI.AFPPlugin.configuration.getAttributeValue("learningCenterWinFeatures");	
				if (attrValue != null)
					learningCenterWinFeatures = attrValue;
					
				attrValue = LSAPI.AFPPlugin.configuration.getAttributeValue("learningCenterAdditionalParam");	
				if (attrValue != null && attrValue != "")
					learningCenterURL = learningCenterURL +"?"+attrValue;
			}
			parent.EPCM.doNavigate(learningCenterURL, 3, learningCenterWinFeatures, null,null,null,null,null);
		}
	}
	
	var onOpenScreenCapture = function() 
	{
		if( LSAPI != null )
		{
			// isSilentMode is true if the screenshot should be talken without user interaction (default is false)
			// currently we always call it with 'false'. Dynamic values used by other applications.
			var isSilentMode = false;
			var scrCapturePlugin = LSAPI.getScreenCapturingPlugin();
			if( scrCapturePlugin != null ) {
				scrCapturePlugin.captureScreen( isSilentMode );
			}
			else {
				window.alert("No Screen Capture plugin defined!");
			}
		}
		else
		{
		  // TODO: remove DEBUG alert message
		  window.alert("No Screen Capture mode defined!");
		}
	}
	
	var getMenusConfiguration = function(){
		return menusConfiguration;
	};
	
	/******************************** Tabsets Methods ********************************/
	var isTabSetsFilterApplied = function() 
	{
		var isEnabled =  LSAPI.getTabsetPlugin().isEnabled();
		var currentTabset = LSAPI.getTabsetPlugin().getCurrentTabset();
		if (isEnabled && (currentTabset != "ALL")) 
		{
			return true;
		}
		return false;
	}
	
	var applyTabsetFilter = function() 
	{
		var filterAppliedElm = JSUtils.$('filter_applied');
		var filterAppliedDividerElm = JSUtils.$('filter_applied_divider');
		 
		//add delimiter and "filter applied" title
		if(filterAppliedElm && filterAppliedDividerElm)
		{
			if (isTabSetsFilterApplied()) 
			{
				filterAppliedElm.innerHTML = filterAppliedTitle;
				filterAppliedElm.title = filterAppliedTooltip;
				filterAppliedDividerElm.style.display = 'block';
			}
			else 
			{
				filterAppliedElm.innerHTML = '';
				filterAppliedElm.title = '';
				filterAppliedDividerElm.style.display = 'none';
			}
		}
	}

	/******************************** End of Tabsets  ********************************/
	
	/******************************** Quick Launch Methods ***************************/		
	/*
	* init Quick Launch and his events.
	*/
	var initQuickLaunch = function initQuickLaunch( quickLaunchTextId )
	{
		// save Quick Launch id 
		quickLaunchId = quickLaunchTextId;

		// initiate the accessibility functionality
		var quickLaunchTextBox = JSUtils.$(quickLaunchId);
		AccessibilityManager.setElementAccessibilityTooltip(quickLaunchTextBox, mastheadStrings.qlInputBoxToolTip);
		
		// get search providers list.
		EPCM.getSAPTop().LSAPI.getSearchProviderPlugin().getProviders(initProvidersList);
		
		// create quick launch combo
		AFPMasthead.quickLaunchCombo = new QuickLaunchCombo( quickLaunchId, "quickLaunchContainer" );
		
		quickLaunchTextBox.onkeyup 		= AFPMasthead.quickLaunchCombo.quickLaunchOnKeyUp;
		quickLaunchTextBox.onkeydown 	= AFPMasthead.quickLaunchCombo.quickLaunchOnKeyDown; 
	};	

	/*
	* catches key down events on the quick launch providers button
	*/
	var providersButtonKeyUp = function providersButtonKeyUp(e)
	{
		var evt = e || window.event;
		var listIsOpen = ( providrsMenu && providrsMenu.isOpen() );
		
		switch(evt.keyCode)
		{
			case AccessibilityManager.KEY_ENTER:
			case AccessibilityManager.KEY_SPACE:
			{
				if( listIsOpen )
				{
					providrsMenu.navigationKeyPressed( evt.keyCode ); // past the key that was pressed to the hierarchical menu.
				}
				else // the providers list is closed - open it.
				{
					providersButtonDown();
					QLButtonsHover();
					openProvidersMenu();
				}
				break;
			}
		}
	};
	
	/*
	* catches key down events on the quick launch search button
	*/
	var searchButtonKeyUp = function searchButtonKeyUp(e)
	{
		var evt = e || window.event;
		if(evt.keyCode == AccessibilityManager.KEY_ENTER || evt.keyCode == AccessibilityManager.KEY_SPACE)
		{
			searchButtonDown();
			QLButtonsHover();
			navigateToSearch();
		}
	};
	
	/*
	* opens a new search window with the active search provider and the search term.
	*/
	var navigateToSearch = function navigateToSearch()
	{
		// start searching and if succeeded clear the quick launch text and blur.
		if( AFPMasthead.quickLaunchCombo && AFPMasthead.quickLaunchCombo.startSearch && AFPMasthead.quickLaunchCombo.startSearch() ) 
		{
			var quickLaunchTextBox = JSUtils.$(quickLaunchId);
			if( quickLaunchTextBox ) quickLaunchTextBox.value = ""; 
			AFPMasthead.quickLaunchCombo.newOnBlur();
		}
	};
	
	/*
	* opens the providers menu:
	* 1. the search providers data is missing - get it - after the data arrives, store it and display the menu.
	* 2. the search providers data exists - display the menu.
	*/
	var openProvidersMenu = function openProvidersMenu()
	{
		if( !searchProvidersList && !searchProvidersListAsCollection ) // we don't have search providers - go get them and then display the menu.
			EPCM.getSAPTop().LSAPI.getSearchProviderPlugin().getProviders( AFPMasthead.updateProvidersList ); 
		else
			displayProvidersMenu(); // we have search providers - display menu.
	};
	
	/*
	* this is a callback from the quick launch plugin that the data (search providers list) is ready.
	*/
	var updateProvidersList = function updateProvidersList(data)
	{
		if( data ) // if a valid data was 
		{
			data = moveUndisplayedsearchProvidersUrl(data);
			searchProvidersList = data; // save original search providers list.
			searchProvidersListAsCollection = createProvidersCollection( searchProvidersList ); // save the providers list as collection.			
			displayProvidersMenu(); // displays the providers menu.
		}
	};
	
	var initProvidersList = function initProvidersList(data)
	{
		if( data ) // if a valid data was 
		{
			data = moveUndisplayedsearchProvidersUrl(data);
			searchProvidersList = data; // save original search providers list.
			searchProvidersListAsCollection = createProvidersCollection( searchProvidersList ); // save the providers list as collection.
			
			//if no search providers available, disable search buttons
			if( !JSUtils.isEmpty(searchProvidersList) )
			{
				enableSearchButtons();
			}  
			else 
			{
				disableSearchButtons();
			}
		}
		else // if we got a problem from the server fetching the data, disable the search buttons;
		{
			disableSearchButtons();
		}
	};
	
	/*
	* remove from the search providers list any unnecessary suggestions URLs and add it to UnDisplayedUrls.
	*/
	var moveUndisplayedsearchProvidersUrl = function moveUndisplayedsearchProvidersUrl(searchProviders)
	{
		for( var j = 0 ; searchProviders && j < searchProviders.length ; j++ )
		{
			var searchProvider = searchProviders[j];
			searchProvider.UnDisplayedUrl = [];
			for( var i = 0 ; searchProvider.getSearchTypes() && i < searchProvider.getSearchTypes().length ; i++ )
			{
				var searchTypes = searchProvider.getSearchTypes();
				var currUrl = searchTypes[i];
				if( currUrl.rel == "suggestions" ) // remove suggestions URL and add it to UnDisplayedUrls.
				{
					searchProvider.Url.splice(i, 1);
					searchProvider.UnDisplayedUrl.push(currUrl);
					i--;
				}
			}
		}
		return searchProviders;
	};
	
	var enableSearchButtons = function enableSearchButtons() 
	{
		AFPMasthead.quickLaunchCombo.init();
		// set quick launch providers button events
		var providersButton = JSUtils.$(providersButtonId);
		if( providersButton )
		{
			setElementClass('providersDownArrow', 'providersDownArrow_std');
			providersButton.onclick = openProvidersMenu;
			providersButton.onmouseover = QLButtonsHover;
			providersButton.onmouseup = QLButtonsHover;
			providersButton.onmouseout = QLButtonsNormal;
			providersButton.onmousedown = providersButtonDown;
			providersButton.onkeyup = providersButtonKeyUp;
			providersButton.onfocus = QLButtonsHover;
			providersButton.onblur = QLButtonsNormal;
			if (LSAPI.AFPPlugin.configuration.isRTL()) 
			{
				providersButton.style.borderRight = "none";
			}
			AccessibilityManager.setElementAccessibilityTooltip(providersButton, mastheadStrings.qlOptionsButtonToolTip);
		}
		
		// set quick launch search button events
		var searchButton = JSUtils.$(searchButtonId);
		if( searchButton )
		{
			setElementClass('searchButtonImageSpan','shellSearchImage');
			searchButton.onclick = navigateToSearch;
			searchButton.onmouseover = QLButtonsHover;
			searchButton.onmouseup = QLButtonsHover;
			searchButton.onmouseout = QLButtonsNormal;
			searchButton.onmousedown = searchButtonDown;
			searchButton.onkeyup = searchButtonKeyUp;
			searchButton.onfocus = QLButtonsHover;
			searchButton.onblur = QLButtonsNormal;
			if (!LSAPI.AFPPlugin.configuration.isRTL()) 
			{
				searchButton.style.borderRight = "none";
			}
			AccessibilityManager.setElementAccessibilityTooltip(searchButton, mastheadStrings.qlSearchButtonToolTip);
		}

		var searchButtonSpan = JSUtils.$(searchButtonImageSpan);
		if( searchButtonSpan && JSUtils.BrowserDetection.is_ie )
		{
			searchButtonSpan.style.marginTop = "1px";
		}
	}
	
	var disableSearchButtons = function disableSearchButtons() 
	{	
		AFPMasthead.quickLaunchCombo.init();
		var providersButton = JSUtils.$(providersButtonId);
		if ( providersButton ) 
		{
			JSUtils.clearAllEventsFromElement(providersButton);
			setElementClass('providersDownArrow', 'providersDownArrow_stdDisabled');
	
			AccessibilityManager.setElementAccessibilityTooltip(providersButton, mastheadStrings.qlOptionsButtonDisableToolTip);
		}
		
		var searchButton = JSUtils.$(searchButtonId);
		if ( searchButton ) 
		{
			JSUtils.clearAllEventsFromElement(searchButton);			
			setElementClass('searchButtonImageSpan','shellSearchImageDisabled');
			
			AccessibilityManager.setElementAccessibilityTooltip(searchButton, mastheadStrings.qlSearchButtonDisableToolTip);
		}
	};
	
	/*
	* create from the providers list a collections list for the hierarchical menues.
	*/
	var createProvidersCollection = function createProvidersCollection(data)
	{
		// add root 
		var menuData = new LSAPI.Collections.Item( "searchProvidersList", null, null, null, null);
		var activeSearchProvider = EPCM.getSAPTop().LSAPI.getSearchProviderPlugin().getDefaultProvider();
		for( var i = 0 ; i < data.length ; i++ )
		{
			var currSearchProvider = data[i];
			var currCollectionItem = new LSAPI.Collections.Item( currSearchProvider.getKey(), currSearchProvider.getName(), null, currSearchProvider.getDescription(), AFPMasthead.switchSearchProvider);
			if( activeSearchProvider.getProviderType() == currSearchProvider.getProviderType() )
			{
				currCollectionItem.selected = true;
			}
			menuData.addItem( currCollectionItem );
		}
		return menuData;
	};
	
	/*
	* the user clicked on different provider and set it as active.
	*/
	var switchSearchProvider = function switchSearchProvider( providerKey )
	{
		setSelectedProvider( providerKey, true, true );
		// sets the active search with the new provider
		EPCM.getSAPTop().LSAPI.getSearchProviderPlugin().setDefaultProvider( providerKey );
	};
	
	/*
	* copied logic from LSAPI.Collections.selectItem. selects the search provider with the itemID.
	*/
	var setSelectedProvider = function setSelectedProvider(itemID, select, toggleAllOthers)
	{
		var providerList = searchProvidersListAsCollection.getChildItems();
		for ( var i = 0; i < providerList.length; i++ )
		{
			if (providerList[i].ID == itemID)
			{
				providerList[i].selected = select;
			}
			else if (toggleAllOthers)
			{
				providerList[i].selected = !select;
			}
		}
	};
	
	/*
	* opens the providers list menu
	*/
	var displayProvidersMenu = function displayProvidersMenu()
	{
		if( !searchProvidersListAsCollection )
			return;
		
		providrsMenu = new HierarchicalMenu(searchProvidersListAsCollection, providersButtonId, null, display_sub_menu_location.Below);
		providrsMenu.selectFirstRow();
	};
	
	/*
	* Sets both Quick Launch buttons with CSS class to hover state
	*/
	var QLButtonsHover = function QLButtonsHover()
	{
		setQLButtonsClass( "quickLaunchButtonHover" );
	};
	
	/*
	* Sets both Quick Launch buttons with CSS class to normal state
	*/
	var QLButtonsNormal = function QLButtonsNormal()
	{
		setElementClass( searchButtonId, "quickLaunchSearchButtonNormal" );
		setElementClass( providersButtonId, "quickLaunchProvidersButtonNormal" );
	};

	/*
	* Sets Quick Launch search buttons (magnifier) CSS class to down state
	*/
	var searchButtonDown = function searchButtonDown()
	{
		setElementClass( searchButtonId, "quickLaunchButtonDown" );
	};
	
	/*
	* Sets Quick Launch providers buttons (down arrow) CSS class to down state
	*/
	var providersButtonDown = function providersButtonDown()
	{
		setElementClass( providersButtonId, "quickLaunchButtonDown" );
	};
	
	/*
	* Sets both Quick Launch buttons with a new CSS class
	*/
	var setQLButtonsClass = function setQLButtonsClass( CSSclassName )
	{
		setElementClass( providersButtonId, CSSclassName );
		setElementClass( searchButtonId, CSSclassName );
	};
	
	/*
	* Sets the HTML element CSS class
	*/
	var setElementClass = function setElementClass( elementId, CSSclassName )
	{
		var element = JSUtils.$(elementId);
		if( element )
		{
			element.className = CSSclassName;
		}
	};
	/******************************** End of Quick Launch ***************************/
	
	
	// Public APIs
	return {
		//constructor
		onLoad:					onLoad,
		callInit:				callInit,
		init:					init,
		getMastheadStrings:     getMastheadStrings,
		changeLinkToOverState:  changeLinkToOverState,
		changeLinkToRegularState: changeLinkToRegularState,
		launchCollaboration:	launchCollaboration,
		// Tabset handling
		isTabSetsFilterApplied:	isTabSetsFilterApplied,
		applyTabsetFilter:		applyTabsetFilter,		
		// Help sub-menu commands
		onOpenLearningCenter: 	onOpenLearningCenter,
		onOpenScreenCapture: 	onOpenScreenCapture,
		quickLaunchCombo: 		quickLaunchCombo,
		// Masthead menus configuration object
		getMenusConfiguration:	getMenusConfiguration,
		// Quick Launch Methods
		updateProvidersList:	updateProvidersList,
		switchSearchProvider:	switchSearchProvider
	}
}();


EPCM.subscribeEventReliable("urn:com.sapportals.portal:browser", "load", AFPMasthead.onLoad);
