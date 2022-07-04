*Settings*
Documentation   Suite de testes do cadastro de personagens

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Deve cadastrar um novo personagem
  [Tags]        happy

  &{user}       Create Dictionary
  ...           name=Mestre Yoda
  ...           email=yoda@jedi.com
  ...           ordem=Jedi
  ...           tpjedi=Cavaleiro Jedi
  ...           bdate=fevereiro-1970-20
  ...           instagram=@yoda

  Go To User Form
  Fill User Form                ${user}
  Select Jedi                   ${user}[tpjedi]
  Check Accept Communications
  Submit User Form
  Toaster Message Should Be     Usuário cadastrado com sucesso!


Email Incorreto
  [Tags]        inv_email

  &{user}       Create Dictionary
  ...           name=Darth Vader
  ...           email=vader&hotmail.com
  ...           ordem=Sith
  ...           bdate=dezembro-1980-15
  ...           instagram=@vader

  Go To User Form
  Fill User Form                ${user}
  Check Accept Communications
  Submit User Form
  Toaster Message Should Be     Oops! o email é incorreto.