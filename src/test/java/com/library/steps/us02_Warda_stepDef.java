package com.library.steps;

import com.library.pages.BorrowedBooksPage;
import com.library.utility.DB_Util;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class us02_Warda_stepDef {

BorrowedBooksPage borrowedBooksPage = new BorrowedBooksPage();
    String expectedBorrowedBooks = "";

    @When("the librarian gets borrowed books number-WH")
    public void the_librarian_gets_borrowed_books_number_wh() {
         expectedBorrowedBooks = borrowedBooksPage.borrowedBooksCount.getText();
    }
    @Then("borrowed books number information must match with DB-WH")
    public void borrowed_books_number_information_must_match_with_db_wh() {
   DB_Util.runQuery("select count(*) from book_borrow\n" +
            "where returned_date is null");
   String actualBorrowedBooks = DB_Util.getFirstRowFirstColumn();
        Assert.assertEquals(actualBorrowedBooks, expectedBorrowedBooks);
    }


}
