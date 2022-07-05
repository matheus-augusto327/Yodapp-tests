*Settings*
Documentation   Suite de testes do cadastro de personagens

Library         ${EXECDIR}/resources/factories/users.py

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Deve cadastrar um novo personagem
  [Tags]        happy

  ${user}       Factory Yoda

  Go To User Form
  Fill User Form                ${user}
  Select Jedi                   ${user}[tpjedi]
  Check Accept Communications
  Submit User Form
  Toaster Message Should Be     Usuário cadastrado com sucesso!
  Go To Home Page


Email Incorreto
  [Tags]        inv_email

  ${user}       Factory Darth Vader

  Go To User Form
  Fill User Form                ${user}
  Check Accept Communications
  Submit User Form
  Toaster Message Should Be     Oops! O email é incorreto.