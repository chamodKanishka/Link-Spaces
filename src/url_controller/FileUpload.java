package url_controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;

@WebServlet(urlPatterns = "/event_image")
@MultipartConfig
public class FileUpload extends HttpServlet {
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
//        System.out.println("ass");
        System.out.println(request.getParameter("event"));
        Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
        InputStream fileContent = null;
        OutputStream outputStream = null;

        try {
            fileContent = filePart.getInputStream();
            System.out.println(fileName);
            byte[] buffer = new byte[fileContent.available()];
            fileContent.read(buffer);

            File targetFile = new File("C:\\temp\\" + fileName);
//            targetFile.createNewFile();
            outputStream = new FileOutputStream(targetFile);
            outputStream.write(buffer);
        } finally {
            if (fileContent != null) {
                try {
                    fileContent.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (outputStream != null) {
                try {
                    // outputStream.flush();
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void uploadImage(HttpServletRequest request, HttpServletResponse response, String filePath) throws ServletException, IOException {

    }
}
