
Feature: Books module
  As a students, I should be able to borrow book

  Scenario: Student borrow new book
    Given the "student" on the home page
    And the user navigates to "Books" page-EL
    And the user searches for "Self Confidence" book-EL
    When the user clicks Borrow Book-EL
    Then verify that book is shown in "Borrowing Books" page-EL
    And  verify logged student has same book in database-EL