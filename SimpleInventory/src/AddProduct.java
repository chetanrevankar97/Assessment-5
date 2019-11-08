

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory entityManagerFactory; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String btn=request.getParameter("btn");
		switch(btn){
		case "Add":
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String desc=request.getParameter("desc");
			String price=request.getParameter("price");
			int price1=Integer.parseInt(price);
			String quantity=request.getParameter("quantity");
			int quantity1=Integer.parseInt(quantity);
			
			ProductClass3 s=new ProductClass3(id,name,desc,price1,quantity1);
			
			entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

			EntityManager em = entityManagerFactory.createEntityManager();
			em.getTransaction().begin();
			em.persist(s);
			em.getTransaction().commit();
			
			List<ProductClass3> p1=new ArrayList<>();
			p1=em.createQuery("select p from ProductClass3 p").getResultList();
			request.setAttribute("data",p1);
			request.getRequestDispatcher("product.jsp").forward(request, response);
			break;
			
		case "Find by Name":
			entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

			EntityManager em1 = entityManagerFactory.createEntityManager();
			String id1=request.getParameter("idname");
			
				List<ProductClass3> s21=em1.createQuery("select p from ProductClass3 p where p.name=:name",ProductClass3.class).setParameter("name",id1).getResultList();
				request.setAttribute("data1",s21);
				request.getRequestDispatcher("product.jsp").forward(request, response);
			break;
		
		
		/*case "Delete":
			entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

			EntityManager em111 = entityManagerFactory.createEntityManager();
			
			String name2=request.getParameter("name");
			em111.getTransaction().begin();
			List<Student> s22=em111.createQuery("select s from Student s where s.name=:name",Student.class).setParameter("name",name2).getResultList();
			  em111.remove( s22 );
			  em111.getTransaction().commit();
			List<Student> s2=new ArrayList<>();
			s2=em111.createQuery("select s from Student s").getResultList();
			request.setAttribute("data",s2);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;*/
		}
	}

}
