package controller.url_controller;

import controller.db_controller.CommentsEventsController;
import model.CommentDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/add_comment")
public class AddComment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("type").equals("job")) {
            CommentsJobsController commentsJobsController = new CommentsJobsController();
            CommentDTO commentDTO = new CommentDTO();
            commentDTO.setJob_id(Integer.parseInt(request.getParameter("eventId")));
            commentDTO.setPoster_id(Integer.parseInt(request.getParameter("posterId")));
            commentDTO.setComment(request.getParameter("comment"));
            if (!request.getParameter("commentId").equals("")) {
                commentDTO.setId(Integer.parseInt(request.getParameter("commentId")));
                commentsJobsController.updateComment(commentDTO);
            } else {
                commentsJobsController.addComment(commentDTO);
            }
        } else if (request.getParameter("type").equals("event")) {
            CommentsEventsController commentsEventsController = new CommentsEventsController();
            CommentDTO commentDTO = new CommentDTO();
            commentDTO.setEvent_id(Integer.parseInt(request.getParameter("eventId")));
            commentDTO.setPoster_id(Integer.parseInt(request.getParameter("posterId")));
            commentDTO.setComment(request.getParameter("comment"));
            if (!request.getParameter("commentId").equals("")) {
                commentDTO.setId(Integer.parseInt(request.getParameter("commentId")));
                commentsEventsController.updateComment(commentDTO);
            } else {
                commentsEventsController.addComment(commentDTO);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
