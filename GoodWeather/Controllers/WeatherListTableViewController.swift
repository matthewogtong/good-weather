//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/3/22.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController {
    
    private var weatherListViewModel = WeatherListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        weatherListViewModel.numberOfRows(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.K.reuseableWeatherCell, for: indexPath) as! WeatherCell
        
        let weatherVM = weatherListViewModel.modelAt(indexPath.row)
        
        cell.configure(weatherVM)
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Constants.K.addWeatherCityVCIdentifier {
            prepareSegueForAddWeatherCityViewController(segue: segue)
        }
        
    }
    
    func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue) {
        
        guard let nav = segue.destination as? UINavigationController else {
            fatalError("NavigationController not found")
        }
        
        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else {
            fatalError("AddWeatherCityController not found")
        }
        
        addWeatherCityVC.delegate = self
        
    }
    
}

//MARK: - AddWeatherDelegate

extension WeatherListTableViewController: AddWeatherDelegate {

    func addWeatherDidSave(vm: WeatherViewModel) {
        weatherListViewModel.addWeatherViewModel(vm)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

}


