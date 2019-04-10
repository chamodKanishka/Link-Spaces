package url_controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@WebServlet(urlPatterns = "/event_image")
public class FileUpload extends HttpServlet{
    private boolean isMultipart;
    private String filePath;
    private int maxFileSize = 1024 * 1024;
    private int maxMemSize = 1024 * 1024;
    private File file;

//public FileUpload(){
//    filePath = getServletContext().getInitParameter("file-upload");
//    System.out.println("C:\\temp\\");
//}

    public void init() {
        filePath = getServletContext().getInitParameter("file-upload");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ass");
// Check that we have a file upload request
        isMultipart = ServletFileUpload.isMultipartContent(request);
//        response.setContentType("text/html");
        java.io.PrintWriter out = response.getWriter();

        if (!isMultipart) {
//            response.sendRedirect("/file.jsp?path=resume&upload=failed");
        }

        DiskFileItemFactory factory = new DiskFileItemFactory();

        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);

        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File("C:\\temp\\"));

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // maximum file size to be uploaded.
        upload.setSizeMax(maxFileSize);
        try {
            // Parse the request to get file items.
            List fileItems = upload.parseRequest(request);
//            System.out.println(fileItems);
            // Process the uploaded file items
            Iterator i = fileItems.iterator();

            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {
                    // Get the uploaded file parameters
                    String fieldName = fi.getFieldName();
                    String fileName = fi.getName();
                    String contentType = fi.getContentType();
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();

                    // Write the file
                    if (fileName.lastIndexOf("\\") >= 0) {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }
                    fi.write(file);
//                    response.sendRedirect("/file.jsp?path=resume&upload=success");
                }
            }
        } catch (Exception ex) {
//            response.sendRedirect("/file.jsp?path=resume&upload=failed");
            System.out.println(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void uploadImage(HttpServletRequest request, HttpServletResponse response,String filePath) throws ServletException, IOException{

    }
}
