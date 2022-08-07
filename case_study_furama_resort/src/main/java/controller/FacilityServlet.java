package controller;

import model.facility.*;
import service.facility.impl.FacilityService;
import service.facility.impl.FacilityTypeService;
import service.facility.impl.RentTypeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "FacilityServlet", urlPatterns = "/facility")
public class FacilityServlet extends HttpServlet {
    private final FacilityService facilityService = new FacilityService();
    private final RentTypeService rentTypeService = new RentTypeService();
    private final FacilityTypeService facilityTypeService = new FacilityTypeService();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                insertFacility(request, response);
                break;
            case "edit":
                updateFacility(request, response);
                break;
            case "delete":
                deleteFacility(request, response);
                break;
            default:
                facilityList(request, response);
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                facilityList(request, response);
                break;
        }
    }


    private void facilityList(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        request.setAttribute("rentTypeList", rentTypeList);

        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("facilityTypeList", facilityTypeList);

        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facilityList", facilityList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void insertFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.selectAll();
        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        request.setAttribute("rentTypeList", rentTypeList);

        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("facilityTypeList", facilityTypeList);

        int max = 0;
        if (facilityList.size() == 0) {
            max = 1;
        } else {
            for (Facility item : facilityList) {
                if (max < item.getId()) {
                    max = item.getId();
                }
            }
        }
        int id = max + 1;

        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeId"));

        String standardRoom;
        String otherDescription;
        double poolArea;
        int numberFloor;
        String facilityFree;

        if (facilityTypeId == 1) {
            standardRoom = request.getParameter("standardRoom");
            otherDescription = request.getParameter("otherDescription");
            poolArea = Double.parseDouble(request.getParameter("poolArea"));
            numberFloor = Integer.parseInt(request.getParameter("numberFloor"));

            Villa villa = new Villa(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, otherDescription, poolArea, numberFloor);

            try {
                facilityService.insertVilla(villa);
            } catch (SQLException exception) {
                exception.printStackTrace();
            }

            try {
                request.getRequestDispatcher("view/facility/create.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else if (facilityTypeId == 2) {
            standardRoom = request.getParameter("standardRoom");
            otherDescription = request.getParameter("otherDescription");
            numberFloor = Integer.parseInt(request.getParameter("numberFloor"));

            House house = new House(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, otherDescription, numberFloor);

            try {
                facilityService.insertHouse(house);
            } catch (SQLException exception) {
                exception.printStackTrace();
            }

            try {
                request.getRequestDispatcher("view/facility/create.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            facilityFree = request.getParameter("facilityFree");

            Room room = new Room(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, facilityFree);

            try {
                facilityService.insertRoom(room);
            } catch (SQLException exception) {
                exception.printStackTrace();
            }

            try {
                request.getRequestDispatcher("view/facility/create.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void updateFacility(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("rentTypeList", rentTypeList);
        request.setAttribute("facilityTypeList", facilityTypeList);

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeId"));

        String standardRoom;
        String otherDescription;
        double poolArea;
        int numberFloor;

        String facilityFree;

        RequestDispatcher dispatcher;

        if (facilityTypeId == 1) {
            standardRoom = request.getParameter("standardRoom");
            otherDescription = request.getParameter("otherDescription");
            poolArea = Double.parseDouble(request.getParameter("poolArea"));
            numberFloor = Integer.parseInt(request.getParameter("numberFloor"));

            Villa villa = new Villa(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, otherDescription, poolArea, numberFloor);

            try {
                facilityService.updateVilla(villa);
            } catch (SQLException exception) {
                exception.printStackTrace();
            }
            request.setAttribute("villa", villa);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else if (facilityTypeId == 2) {
            standardRoom = request.getParameter("standardRoom");
            otherDescription = request.getParameter("otherDescription");
            numberFloor = Integer.parseInt(request.getParameter("numberFloor"));

            House house = new House(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, otherDescription, numberFloor);

            try {
                facilityService.updateHouse(house);
            } catch (SQLException exception) {
                exception.printStackTrace();
            }

            request.setAttribute("house", house);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            facilityFree = request.getParameter("facilityFree");

            Room room = new Room(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, facilityFree);

            try {
                facilityService.updateRoom(room);
            } catch (SQLException exception) {
                exception.printStackTrace();
            }
            request.setAttribute("room", room);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));
        try {
            facilityService.deleteFacility(id);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }

        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facilityList", facilityList);

        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        request.setAttribute("rentTypeList", rentTypeList);

        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("facilityTypeList", facilityTypeList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }


    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        request.setAttribute("rentTypeList", rentTypeList);

        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("facilityTypeList", facilityTypeList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }


    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        request.setAttribute("rentTypeList", rentTypeList);

        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("facilityTypeList", facilityTypeList);

        int id = Integer.parseInt(request.getParameter("id"));
        Facility facility = facilityService.selectFacility(id);
        request.setAttribute("facility", facility);
        RequestDispatcher dispatcher;
        if (facility instanceof Villa) {
            Villa villa = (Villa) facilityService.selectFacility(id);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            request.setAttribute("villa", villa);
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else if (facility instanceof House){
            House house = (House) facilityService.selectFacility(id);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            request.setAttribute("house", house);
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            Room room = (Room) facilityService.selectFacility(id);
            dispatcher = request.getRequestDispatcher("view/facility/edit.jsp");
            request.setAttribute("room", room);
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }


    private void search(HttpServletRequest request, HttpServletResponse response) {
        String keySearch = request.getParameter("keySearch");

        List<RentType> rentTypeList = rentTypeService.selectAllRentType();
        request.setAttribute("rentTypeList", rentTypeList);

        List<FacilityType> facilityTypeList = facilityTypeService.selectAllFacilityType();
        request.setAttribute("facilityTypeList", facilityTypeList);

        List<Facility> facilityList = facilityService.search(keySearch);
        request.setAttribute("facilityList", facilityList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
