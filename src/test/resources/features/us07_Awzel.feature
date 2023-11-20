
Feature: Books module
  As a students, I should be able to borrow book

  Scenario: Student borrow new book
    Given the "student" on the home page
    And the user navigates to "Books" page-AZ
    And the user searches for "Self Confidence" book-AZ
    When the user clicks Borrow Book-AZ
    Then verify that book is shown in "Borrowing Books" page-AZ
    And  verify logged student has same book in database-AZ