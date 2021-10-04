package DAO;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import java.util.ArrayList;

import static org.junit.Assert.*;

public class AdminTest {

    private  Admin admin = new Admin();
    private  final String FILANAME = "app.properties";



    @Test
    public void getFILANAME() {

        Assert.assertEquals(FILANAME, admin.getFILANAME());

    }

    @Test
    public void findNicknameAndRoleThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findNicknameAndRole();

        if (arrayList.size() == 0){
            fail();
        }


    }

//                 SizeShouldNotZero
    @Test
    public void findAllMovieSessionThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieSession();

        if (arrayList.size() == 0){
            fail();
        }
    }

    @Test
    public void findAllMovieNameThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieName();

        if (arrayList.size() == 0){
            fail();
        }

    }

    @Test
    public void findAllMovieUkrNameThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieUkrName();

        if (arrayList.size() == 0){
            fail();
        }

    }

    @Test
    public void findAllUniqueMovieNameThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllUniqueMovieName();

        if (arrayList.size() == 0){
            fail();
        }
    }

    @Test
    public void getFolderURLShouldReturnTrue() {

        String result = admin.getFolderURL("test");

        Assert.assertEquals("test" , result);



    }

    @Test
    public void getFolderURLShouldReturnNull() {

        String result = admin.getFolderURL("false");

        Assert.assertEquals(null , result);



    }

    @Test
    public void getPosterURLShouldReturnTrue() {

        String result = admin.getPosterURL("test");

        Assert.assertEquals("test.jpg" , result);

    }
    @Test
    public void getPosterURLShouldReturnNull() {

        String result = admin.getPosterURL("false");

        Assert.assertEquals(null , result);

    }

    @Test
    public void findAllMovieSessionByNameThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieSessionByName("Test");

        if (arrayList.size() == 0){
            fail();
        }

    }

    @Test
    public void findAllMovieSessionByNameThenSizeShouldZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieSessionByName("ZeroSize");

        if (arrayList.size() != 0){
            fail();
        }

    }

    @Test
    public void findAllMovieSessionByNameWithIDThenSizeShouldNotZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieSessionByNameWithID("Test");

        if (arrayList.size() == 0){
            fail();
        }

    }

    @Test
    public void findAllMovieSessionByNameWithIDThenSizeShouldZero() {

        ArrayList arrayList = new ArrayList();
        arrayList= admin.findAllMovieSessionByNameWithID("ZeroSize");

        if (arrayList.size() != 0){
            fail();
        }

    }

    @Test
    public void getDescriptionMovieShouldReturnTrue() {

        String result = admin.getDescriptionMovie("test");

        Assert.assertEquals("test",result);


    }


    @Test
    public void getDescriptionMovieShouldReturnFalse() {

        String result = admin.getDescriptionMovie("NotFoundName");

        Assert.assertEquals(null,result);


    }

    @Test
    public void findAllMovieSessionByNameStringShouldReturnTrue() {


        String result = admin.findAllMovieSessionByNameString("Test");
        if (result == null){
            fail();
        }

    }

    @Test
    public void findAllMovieSessionByNameStringShouldReturnFalse() {


        String result = admin.findAllMovieSessionByNameString("NotFoundName");
        Assert.assertEquals(null,result);

    }

    @Test
    public void getCountOfSeatsByDateShouldReturnNotZeroSize() {

        int result = admin.getCountOfSeatsByDate("Monday","99:99");
        if (result == 0 ){
            fail();
        }


    }

    @Test
    public void getCountOfSeatsByDateShouldReturnOneSize() {

        int result = admin.getCountOfSeatsByDate("notFound","notFoundTime : notFoundTime");
        Assert.assertEquals(1,result);


    }

    @Test
    public void getUniqueSeatBySessionShouldReturnNotZeroSize() {
        ArrayList arrayList = new ArrayList();
         arrayList = admin.getUniqueSeatBySession("Monday","99:99");

         if (arrayList.size() == 0 ){
             fail();
         }

    }


    @Test(expected = NullPointerException.class)
    public void getUniqueSeatBySessionShouldReturnException() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getUniqueSeatBySession("notFound","notFoundTime : notFoundTime");

        Assert.assertEquals(0 , arrayList.size() );

    }


    @Test
    public void getUniqueSeatBySessionShouldReturnNull() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getUniqueSeatBySession("notFound","notFoundTime : notFoundTime");

        Assert.assertEquals(null , arrayList );

    }

    @Test
    public void getCountSeatOfSessionShouldReturnNotZeroSize() {

        int result  = admin.getCountSeatOfSession("Monday","99:99");
        if (result == 0 ){
            fail();
        }
    }


    @Test
    public void getCountSeatOfSessionShouldReturnZeroSize() {

        int result  = admin.getCountSeatOfSession("notFound","notFoundTime : notFoundTime");
        Assert.assertEquals(-1 , result );

    }

    @Test
    public void maxIdSessionShouldReturnTrue() {

        int result  = admin.maxIdSession();

        if (result < 0){
            fail();
        }


    }

    @Test
    public void getInfoAboutSessionAndMoviesShouldReturnTrue_type1() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getInfoAboutSessionAndMovies(1,1);

        Assert.assertEquals(1 , arrayList.size() );
    }

    @Test
    public void getInfoAboutSessionAndMoviesShouldReturnTrue_type2() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getInfoAboutSessionAndMovies(2,1);

        Assert.assertEquals(2 , arrayList.size() );
    }

    @Test(expected =  NullPointerException.class)
    public void getInfoAboutSessionAndMoviesShouldReturnException_type1() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getInfoAboutSessionAndMovies(-1,1);

        Assert.assertEquals(-1 , arrayList.size() );
    }

    @Test(expected =  NullPointerException.class)
    public void getInfoAboutSessionAndMoviesShouldReturnException_type2() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getInfoAboutSessionAndMovies(-1,-1);

        Assert.assertEquals(-1 , arrayList.size() );
    }

    @Test(expected =  NullPointerException.class)
    public void getInfoAboutSessionAndMoviesShouldReturnException_type3() {

        ArrayList arrayList = new ArrayList();
        arrayList = admin.getInfoAboutSessionAndMovies(1,-1);

        Assert.assertEquals(-1 , arrayList.size() );
    }

    @Test
    public void getRoleByNameShouldReturnTrue() {

        String result = admin.getRoleByName("test");
        Assert.assertEquals("1",result);

    }

    @Test
    public void getRoleByNameShouldReturnNull() {

        String result = admin.getRoleByName("notFound");
        Assert.assertEquals(null,result);

    }
}