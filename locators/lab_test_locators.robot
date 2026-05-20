*** Variables ***
${lab_test_link}  xpath=//a[text()="Lab Tests"]
${lab_test}  xpath=(//div[@class="pZ"]/button)[2]
${lab_test_name}  xpath=(//div[@class="QX"]/descendant::p[contains(@class,"RX")])[2]

${cart_icon}  xpath=//img[@alt="cart-icon"]
${test_name_in_cart}  xpath=//div[@class="GoToCartBannerNew_lhs__c1DvP"]/p
