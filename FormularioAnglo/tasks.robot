*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close={FALSE}
Library    RPA.Desktop
Library    RPA.Outlook.Application
Library    RPA.Email.ImapSmtp    smtp_server=smtp.gmail.com    smtp_port=587

*** Variables ***
${USERNAME}    domoarigato.roboto2023
${PASSWORD}    Libra2021GM41.
${RECIPIENT}    domoarigato.roboto2023@gmail.com

*** Keywords ***
Abrir Pagina01
    Open Chrome Browser     https://forms.office.com/r/gQyy6LFaKH
    Wait Until Page Contains Element    id:form-page-css
Llenar y enviar formulario
    Input Text    css:#form-container > div > div > div.office-form-content.office-form-page-padding > div > div.office-form.office-form-theme-shadow > div.office-form-body > div.office-form-question-body > div:nth-child(2) > div > div.office-form-question-element > div > div > input    08128179
    Input Text    css:#form-container > div > div > div.office-form-content.office-form-page-padding > div > div.office-form.office-form-theme-shadow > div.office-form-body > div.office-form-question-body > div:nth-child(3) > div > div.office-form-question-element > div > div > input    Ortiz Hurtado Manuel Omar
    Click Element    xpath://*[@id="SelectId_0_placeholder"]
    Click Element    xpath://*[@id="SelectId_0"]/div[2]/div[217]
    Input Text    css:#form-container > div > div > div.office-form-content.office-form-page-padding > div > div.office-form.office-form-theme-shadow > div.office-form-body > div.office-form-question-body > div:nth-child(4) > div > div.office-form-question-element > div > div.office-form-other-answer.office-form-dropdown-other-answer > div > input    Manpower
    Click Element    xpath://*[@id="form-container"]/div/div/div[1]/div/div[1]/div[2]/div[2]/div[5]/div/div[3]/div/div/div/label/input
    Click Element    xpath://*[@id="form-container"]/div/div/div[1]/div/div[1]/div[2]/div[2]/div[6]/div/div[3]/div/div[2]/div/label/input
    Input Text    css:#form-container > div > div > div.office-form-content.office-form-page-padding > div > div.office-form.office-form-theme-shadow > div.office-form-body > div.office-form-question-body > div:nth-child(7) > div > div.office-form-question-element > div > div > input    manuel.ortiz-externo@angloamerican.com
    Input Text    css:#form-container > div > div > div.office-form-content.office-form-page-padding > div > div.office-form.office-form-theme-shadow > div.office-form-body > div.office-form-question-body > div:nth-child(8) > div > div.office-form-question-element > div > div > input    998770025
    ###Click Button    css:#form-container > div > div > div.office-form-content.office-form-page-padding > div > div.office-form.office-form-theme-shadow > div.office-form-body > div.office-form-navigation-container > div.office-form-button-container > button
    
*** Tasks ***
Para enviar el formulario
    Abrir Pagina01
    Llenar y enviar formulario
    Authorize    account=${USERNAME}    password=${PASSWORD}
    Send Message    sender:${USERNAME}    recipients:${RECIPIENT}    subject:Tema    body:Cuerpo

