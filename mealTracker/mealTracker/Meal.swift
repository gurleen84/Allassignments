//
//  Meal.swift
//  mealTracker
//
//  Created by Gurleen Singh on 18/08/25.
//

import Foundation


struct Meal{
    
    var name: String
    var food: [Food]
}

var meals : [Meal]{
    let breakfastFoods = [
               Food(name: "Pancakes", description: "Fluffy pancakes with syrup"),
               Food(name: "Omelette", description: "Egg omelette with cheese"),
               Food(name: "Fruit Salad", description: "Fresh mixed fruits")
           ]
           
           let lunchFoods = [
               Food(name: "Grilled Chicken", description: "Served with vegetables"),
               Food(name: "Caesar Salad", description: "Crisp lettuce with dressing"),
               Food(name: "Rice Bowl", description: "Steamed rice with curry")
           ]
           
           let dinnerFoods = [
               Food(name: "Pasta", description: "Pasta in tomato sauce"),
               Food(name: "Soup", description: "Hot vegetable soup"),
               Food(name: "Garlic Bread", description: "Crispy garlic-flavored bread")
           ]
           
           let breakfast = Meal(name: "Breakfast", food: breakfastFoods)
           let lunch = Meal(name: "Lunch", food: lunchFoods)
           let dinner = Meal(name: "Dinner", food: dinnerFoods)
           
           return [breakfast, lunch, dinner]
       }

