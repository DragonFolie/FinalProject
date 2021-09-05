package model;

import DataBase_instance.UsersManager;
import entities.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

public class Model {
    private static Model instance = new Model();

    private List<User> model;
    private ArrayList<String> pass = new ArrayList();




    public static boolean findInDb(String name,String password){

        UsersManager usersManager = new UsersManager();

        return usersManager.findUserInDb(name,password);

    }








    public static Model getInstance() {
        return instance;
    }

    public Model() {
        model = new ArrayList<>();
    }

    public void add(User user) {
        model.add(user);
    }

    public List<String> list() {
        return model.stream()
                .map(User::getName)
                .collect(Collectors.toList());
    }




}