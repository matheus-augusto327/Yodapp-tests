*Settings*
Documentation   Suite de testes do cadastro de personagens

Resource        base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Deve cadastrar um novo personagem

  Click         text=Novo

  #Checkpoint (para saber se fomos de fato para a página de cadastro)
  Wait For Elements State   css=.card-header-title >> text=Cadastrar novo usuário
  ...           visible     5

  Fill Text     css=input[placeholder^="Nome"]  Mestre Yoda
  Fill Text     css=input[placeholder="Email"]  yoda@jedi.com
  Fill Text     id=insta                        @yoda

  Select Options By   css=.ordem select  value  1