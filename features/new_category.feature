Feature: Create a new category
  As a blogger
  I want to  better organize my opinions
  I want to add new categories for posts
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access the categories page 
    Given I am on the admin dashboard
    And I follow "Categories"
    Then I should be on the add new category page
  
  Scenario: Successfully create a new category
    Given I am on the add new category page
    And I fill in "category_name" with "Random"
    And I fill in "category_keywords" with "abcd efgh"
    And I fill in "category_description" with "12345678 sdfsdf"
    And I press "Save"
    Then I should be on the add new category page
    And I should see "Random"
    
  Scenario: Successfully edit a category
    Given I am on the add new category page
    And I follow "General"
    Then I fill in "category_name" with "non-general"
    And I press "Save"
    Then I should be on the add new category page
    And I should see "non-general"

  Scenario: Successfully delete a category
    Given I am on the add new category page
    And I delete the category with the Title "General"
    And I press "delete"
    Then I should not see "General"
