
import com.zero.pojo.Book;
import com.zero.service.BookService;
import com.zero.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class t {
    @Test
    public void t1(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Map m=new HashMap();
        BookService bookService= (BookService) (applicationContext.getBean("bookServiceImpl"));
        m.put("bookId",3);
        List<Book> books = bookService.QueryBooks(m);
        System.out.println(books);
        System.out.println(books.get(0));

    }
    @Test
    public void t2(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Map m=new HashMap();
        UserService userService=(UserService)applicationContext.getBean("UserServiceImpl");
        System.out.println(userService.Login(m));
    }


}
