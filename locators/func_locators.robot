*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${buy_medicines_nav}    xpath=//a[contains(normalize-space(.), "Buy Medicines")]

${apollo_products}      xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[1]
${baby_care}           xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[2]
${nutritional_drinks}   xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[3]
${women_care}          xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[4]
${personal_care}       xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[5]
${ayurveda}            xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[6]
${health_devices}      xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[7]
${home_essentials}     xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[8]
${shop_by_category}    xpath=//ul[@class="MegaMenu_mmList__VtxyI"]/li[9]
