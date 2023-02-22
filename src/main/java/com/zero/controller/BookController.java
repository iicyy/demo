package com.zero.controller;

import com.zero.pojo.Book;
import com.zero.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookService bookService;
    //查询全部书籍
    @RequestMapping("/AllBook")
    public String QueryAllBook(Model model){
        List<Book> books=bookService.QueryBooks(new HashMap());
        model.addAttribute("Books",books);  //给前端传入参数
        return "AllBook";
    }
    //  按条件查询
    @RequestMapping("/QueryBook")
    public String QueryBook(String QueryBook,String Value,Model model){
        System.out.println(QueryBook+"--->"+Value);
        Map m=new HashMap();
        m.put(QueryBook,Value);
        List<Book> books=bookService.QueryBooks(m);
        System.out.println(books);
        model.addAttribute("Books",books);
        return "AllBook";
    }

    //添加书
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "toAddBook";
    }
    @RequestMapping("/AddBook")
    public String AddBook(Book book){
        bookService.AddBook(book);
        return "redirect:/book/AllBook";
    }
    //修改书
    @RequestMapping("/toUpdataBook")
    public String toUpdataBook(int bookId,Model model){
        Map m=new HashMap();
        m.put("bookId",bookId);
        System.out.println("bookId--->"+bookId);
        List<Book> books=bookService.QueryBooks(m);
        System.out.println(books.get(0));
        model.addAttribute("book",books.get(0));
        return "toUpdataBook";
    }
    @RequestMapping("/UpDataBook")
    public String UpdataBook(Book book,Model model){
        bookService.UpdataBook(book);
        return "redirect:/book/AllBook";
    }
   //删除书
    @RequestMapping("/DeleteBook")
    public String DeleteBook(int bookId){
        Map m=new HashMap();
        m.put("bookId",bookId);
        bookService.DeleteBook(m);
        return "redirect:/book/AllBook";
    }


}
