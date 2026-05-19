*** Variables ***
${lab_test_page}=  xpath=//a[text()="Lab Tests"]
${view_all_button}=  xpath=(//a[text()="View All"])[2]
${filter}=  xpath=(//div[@class="WebFilter_subFilterContainer__jHlz9"])[2]/descendant::ul/li[2]/descendant::input
${select_test}=  xpath=//div[@class="SingleTypeListing_listinBoxes__cpbU4"]/div[1]
${add_to_cart}=  xpath=(//div[@class="Rd Zd CustomToolTip_customToolTip__Y_T15 CustomToolTip_hideToolip__RSo9T"]/descendant::button)[1]
${cart_icon}=  xpath=//img[@alt="cart-icon"]
