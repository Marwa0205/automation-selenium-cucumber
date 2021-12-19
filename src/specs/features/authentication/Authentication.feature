@autentication
Feature: Tester la page connextion
  ETQ utilisateur je souhaite  tester la page connexion

  Background: 
    Given Je me connecte sur l'application Orange HRM

  @cnx
  Scenario: Tester la page connextion - ORANGE HRM
    When Je saisie le UserName "Admin"
    And Je saisie le mot de passe "admin123"
    And Je clique sur le boutton Login
    Then Je me redirige vers la page Home "Welcome"

  @logout
  Scenario: Tester la deconnexion  - ORANGE HRM
    When Je clique sur le bonhomme
    When Je clique sur logout
