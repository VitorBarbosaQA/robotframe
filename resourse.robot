*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMEPATCH}    C:/Users/Pichau/Downloads/driverteste/chromedriver.exe
${BROWSER}        chrome
${URL}            https://www.amazon.com.br/



*** Keywords ***
Acessar a pagina da amazon
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEPATCH}
    Sleep    8s

Pesquisar celular
    Input Text    id=twotabsearchtextbox    celular
    Click Element    id=nav-search-submit-button

Validar o processo
    Wait Until Page Contains    text=Resultados