*Settings*
Documentation   Suite de testes para verificar se o app está online

Library   Browser

*Test Cases*
Yodapp deve estar online
  
  New Browser   webkit  headless=False  slowMo=00:00:03
  New Page      http://yodapp.vercel.app
  
  Get Title     equal     Yodapp | QAninja

  Take Screenshot

Deve exibir mensagem de boas vindas

  New Browser   webkit  headless=False  slowMo=00:00:03
  New Page      http://yodapp.vercel.app