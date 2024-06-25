//
//  NetworkManager.swift
//  appDaylyService
//
//  Created by formation on 24/06/2024.
//
import Foundation
import Combine

class NetworkManager: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var user: User? = nil
    @Published var services: [Service] = []
    @Published var notifications: [Notification] = []

    var cancellables = Set<AnyCancellable>()

    func logout() {
        isLoggedIn = false
        user = nil
    }

    func signup(email: String, password: String) {
        guard let url = URL(string: "http://localhost:5000/api/signup") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])

        URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { result -> Data in
                guard let response = result.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return result.data
            }
            .decode(type: User.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Signup error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] user in
                self?.user = user
                self?.isLoggedIn = true
            })
            .store(in: &cancellables)
    }

    func login(email: String, password: String) {
        guard let url = URL(string: "http://localhost:5000/api/login") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])

        URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { result -> Data in
                guard let response = result.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return result.data
            }
            .decode(type: User.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Login error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] user in
                self?.user = user
                self?.isLoggedIn = true
            })
            .store(in: &cancellables)
    }

    func resetPassword(email: String) {
        guard let url = URL(string: "http://localhost:5000/api/reset-password") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = ["email": email]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])

        URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { result -> Data in
                guard let response = result.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return result.data
            }
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Reset password error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { _ in
                print("Reset password success")
            })
            .store(in: &cancellables)
    }

    func fetchServices() {
        guard let url = URL(string: "http://localhost:5000/api/services") else { return }

        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { result -> Data in
                guard let response = result.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return result.data
            }
            .decode(type: [Service].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Fetch services error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] services in
                self?.services = services
            })
            .store(in: &cancellables)
    }

    func createService(name: String, description: String) {
        guard let url = URL(string: "http://localhost:5000/api/services") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = ["name": name, "description": description]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])

        URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { result -> Data in
                guard let response = result.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return result.data
            }
            .decode(type: Service.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Create service error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] service in
                self?.services.append(service)
            })
            .store(in: &cancellables)
    }
}
