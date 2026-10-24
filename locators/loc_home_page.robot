*** Variables ***
${HOMEPAGE_BTN_LEWATI}    id=com.eraspace.app:id/btnSkip
${HOMEPAGE_BTN_LOGIN}    id=com.eraspace.app.home:id/btnLogin

#After Login
${HOME_NAV_HOME}          id=com.eraspace.app.home:id/navigationHome
${HOME_SCROLL}            id=com.eraspace.app.home:id/nsvHome
${HOME_LIST_MENU}         xpath=(//androidx.recyclerview.widget.RecyclerView[@resource-id='com.eraspace.app:id/rvIconsLabelMenu'])[1]
${HOME_MENU_MOBILE}       xpath=//android.widget.TextView[@resource-id='com.eraspace.app:id/tvLabel' and @text='Mobile Phones']
${HOME_LAYER_POINT}       id=com.eraspace.app.home:id/layerPoint
${HOME_POINT_VALUE}       id=com.eraspace.app.home:id/tvPoint
${HOME_POINT_LABEL}       id=com.eraspace.app.home:id/tvCheckPoint