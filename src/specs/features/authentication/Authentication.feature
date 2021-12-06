@autentication
Feature: Tester la page connextion
  ETQ utilisateur je souhaite  tester la page connexion

  @cnx
  Scenario: Tester la page connextion - ORANGE HRM
    Given Je me connecte sur l'application Orange HRM
    When Je saisie le UserName
    And Je saisie le mot de passe
    And Je clique sur le boutton Login
    Then Je me redirige vers la page Home
