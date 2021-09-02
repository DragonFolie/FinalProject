package model;

import entities.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

public class Model {
    private static Model instance = new Model();

    private List<User> model;

    private ArrayList<String> pass = new ArrayList();

    private static HashMap<String,String> hashMap= new HashMap<>();

    public void addValues(String name,String password) {
        hashMap.put(name,password);
//        pass.add(password);
    }

    public static HashMap<String, String> getHashMap() {
        return hashMap;
    }

    public static boolean find_in_hashMap(String name,String password){

        return hashMap.containsKey(name) && hashMap.containsValue(password);

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