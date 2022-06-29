*Settings*
Documentation   Suite de testes para verificar se o app está online

Library   Browser

*Test Cases*
Yodapp deve estar online
  
  New Browser   chromium      headless=False      slowMo=00:00:01
  New Page      http://yodapp.vercel.app
  
  Get Title     equal       Yodapp | QAninja

  Take Screenshot

Deve exibir mensagem de boas vindas

  New Browser   chromium      headless=False       slowMo=00:00:01
  New Page      http://yodapp.vercel.app

  Wait For Elements State    
  ...           css=.navbar-item >> text=Que a Força (qualidade) esteja com você!  
  ...           visible     5  

  Take Screenshot