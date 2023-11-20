
Feature: Books module
  As a librarian, I should be able to add new book into library

  Scenario Outline: Verify added book is matching with DB
    Given the "librarian" on the home page
    And the user navigates to "Books" page-SS
    When the librarian click to add book-SS
    And the librarian enter book name "<Book Name>"-SS
    When the librarian enter ISBN "<ISBN>"-SS
    And the librarian enter year "<Year>"-SS
    When the librarian enter author "<Author>"-SS
    And the librarian choose the book category "<Book Category>"-SS
    And the librarian click to save changes-SS
    Then verify "The book has been created" message is displayed-SS
    And verify "<Book Name>" information must match with DB-SS
    Examples:
      | Book Name             | ISBN     | Year | Author          | Book Category        |
      | Head First Java       | 10112021 | 2021 | Kathy Sierra    | Action and Adventure |
      | The Scrum Field Guide | 11112021 | 2006 | Mitch Lacey     | Short Story          |