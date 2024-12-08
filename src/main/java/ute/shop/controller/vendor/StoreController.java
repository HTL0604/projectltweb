package ute.shop.controller.vendor;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import ute.shop.entity.Store;
import ute.shop.entity.User;
import ute.shop.services.IStoreService;
import ute.shop.services.implement.StoreServiceImpl;
import ute.shop.utils.*;

@MultipartConfig(fileSizeThreshold = 1024*1024,maxFileSize = 1024*1024*5, maxRequestSize = 1024*1024*5*5)
@WebServlet(urlPatterns = { "/vendor/stores", "/vendor/store/add" ,"/vendor/store/insert","/vendor/store/edit","/vendor/store/update","/vendor/store/delete","/vendor/store/search"})
public class StoreController extends HttpServlet {

	IStoreService storeService = new StoreServiceImpl();
	private static final long serialVersionUID = 1L;
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String url = request.getRequestURI();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		if (url.contains("/vendor/stores")) {
			List<Store> list = storeService.findAll();
			for(Store store : list) {
				System.out.print(store + "\n");
			}
			request.setAttribute("liststore", list);
			request.getRequestDispatcher("/views/vendor/store-list.jsp").forward(request, response);
		}else if(url.contains("/vendor/store/add")){
			request.getRequestDispatcher("/views/vendor/store-add.jsp").forward(request, response);

		}else if(url.contains("/vendor/store/edit")){
			int id = Integer.parseInt(request.getParameter("id"));
			Store  store = storeService.findById(id);
			request.setAttribute("store", store);
			request.getRequestDispatcher("/views/vendor/store-edit.jsp").forward(request, response);
		}else if(url.contains("/vendor/store/delete")){
			String id =request.getParameter("id");
			try {
				storeService.delete(Integer.parseInt(id));
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect(request.getContextPath() + "/vendor/stores");
		}
    }
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String url = request.getRequestURI();
		if(url.contains("/vendor/store/insert")) {
			//lấy dữ liệu từ views
			String storename = request.getParameter("storename");
			String bio = request.getParameter("bio");
			String slug = request.getParameter("slug");
			String images  = request.getParameter("images");
			double commissionSold = 1;
			HttpSession session = request.getSession();
			User u = (User) session.getAttribute("account");
			int ownerId = 1;
			//đưa vào model
			Store store = new Store();
			store.setBio(bio);
			store.setName(storename);
			store.setSlug(slug);
			store.setAvatar(images);
			store.setCommissionSold(commissionSold);
			store.setOwner(u);
			//xử lí upload file
			String fname="";
			String uploadPath = "C:\\upload";
			File uploadDir = new File(uploadPath);
			if(!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			try {
				Part part = request.getPart("images1");
				if(part.getSize()>0) {
					String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
					int index = filename.lastIndexOf(",");
					String ext = filename.substring(index+1);
					fname = System.currentTimeMillis()+ "." + ext;
					part.write(uploadPath + "/" + fname) ;
					store.setAvatar(fname);
				}else if(images != null) {
					store.setAvatar(images);
					
				}else {
					store.setAvatar("avartar.png");
				}
			}catch(Exception e){
				e.printStackTrace();
				
			}
			
			
			//truyền model vào insert
			storeService.insert(store);
			//Trả về views
			response.sendRedirect(request.getContextPath()+"/vendor/store/add");
			
		}else if(url.contains("update")) {
			int storeid = Integer.parseInt(request.getParameter("storeid"));
			String storename = request.getParameter("storename");
			String bio = request.getParameter("bio");
			String slug = request.getParameter("slug");
			Store store = new Store();
			store.set_id(storeid);
			store.setName(storename);
			store.setBio(bio);
			store.setSlug(slug);
			// luu hinh anh cu
			Store storeld = storeService.findById(storeid);
			String fileold = storeld.getAvatar();
			// Xu ly images
			String fname ="";
			String uploadPath = "C:\\\\upload";
			
			File uploadDir = new File(uploadPath);
			if(!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			try {
				Part part = request.getPart("images");
				if(part.getSize() > 0) {
					String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
					// đổi tên file
					int index = filename.lastIndexOf(".");
					String ext = filename.substring(index+1);
					fname = System.currentTimeMillis() + "." + ext;
					// upload file
					part.write(uploadPath + "/" + fname);
					// ghi ten file vao data
					store.setAvatar(fname);
				}else {
					store.setAvatar(fileold);
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			
			storeService.update(store);
			response.sendRedirect(request.getContextPath() + "/vendor/stores");			
		}
	}
}
