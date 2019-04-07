package controller.db_controller;

import db.DBConnection;
import model.JobDTO;

import java.sql.*;
import java.util.ArrayList;

public class JobController {
    public static ArrayList<JobDTO> getJobs() {
        ArrayList<JobDTO> jobDTOS = new ArrayList<>();
//        try {
//            Connection connection = DBConnection.getDBConnection().getConnection();
//            Statement createStatement = connection.createStatement();
//            ResultSet rst = createStatement.executeQuery("select echid,text from evaluation_criteria_heading");
//            while (rst.next()) {
//                JobDTO jobDTO = new JobDTO();
//                jobDTO.setJobTitle("bu bu");
//                jobDTOS.add(jobDTO);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
        JobDTO jobDTO = new JobDTO();
        jobDTO.setJobTitle("bu bu");
        JobDTO jobDTO1 = new JobDTO();
        jobDTO1.setJobTitle("buu buu");
        jobDTOS.add(jobDTO);
        jobDTOS.add(jobDTO1);
        return jobDTOS;
    }
}
