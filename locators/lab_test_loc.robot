*** Variables ***
${lab_test_page}=  xpath=//a[text()="Lab Tests"]
${view_all_button}=  xpath=(//a[text()="View All"])[2]
${filter}=  xpath=(//div[contains(@class,"cl") and contains(@class,"dl")])[2]
${select_test}=  xpath=//div[@class="SingleTypeListing_listinBoxes__cpbU4"]/div[1]
${add_to_cart}=  xpath=//span[text()="Add To Cart"]
${cart_icon}=  xpath=//img[@alt="cart-icon"]