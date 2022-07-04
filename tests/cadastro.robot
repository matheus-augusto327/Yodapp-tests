*Settings*
Documentation   Suite de testes do cadastro de personagens

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Deve cadastrar um novo personagem
  [Tags]        happy

  Go To User Form
  Fill User Form                Mestre Yoda  yoda@jedi.com  Jedi  fevereiro-1970-20  @yoda
  Select Jedi                   Cavaleiro Jedi
  Check Accept Communications
  Submit User Form
  Toaster Message Should Be     Usuário cadastrado com sucesso!


Email Incorreto
  [Tags]        inv_email

  Go To User Form
  Fill User Form                Darth Vader  vader&hotmail.com  Sith  dezembro-1980-15  @vader
  Check Accept Communications
  Submit User Form
  Toaster Message Should Be     Oops! o email é incorreto.