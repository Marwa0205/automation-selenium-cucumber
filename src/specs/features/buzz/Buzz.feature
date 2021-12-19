@buzz
Feature: Tester le boutton Buzz 
  ETQ utilisateur je souhaite  tester le boutton Buzz
  
 Background:
    Given Je me connecte sur l'application Orange HRM
    When Je saisie le UserName "Admin"
    And Je saisie le mot de passe "admin123"
    And Je clique sur le boutton Login

  @update_status
  Scenario: Tester le boutton Buzz
    When Je clique sur le boutton Buzz 
    And Je saisie le statut "Hello"
    And je clique sur le boutton post
    Then Mon statut sera affiché "Hello"