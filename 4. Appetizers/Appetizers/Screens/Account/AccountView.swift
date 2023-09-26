//
//  AccountView.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var vm = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $vm.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    TextField("Last Name", text: $vm.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                    TextField("Email", text: $vm.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", 
                               selection: $vm.user.birthdate,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                }
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $vm.user.isExtraNapkins)
                    Toggle("Frequent Refills", isOn: $vm.user.isFrequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .appPrimary))
            }
            .navigationTitle("👤 Account")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Save Changes") { vm.saveChanges() }
                    Button("Dismiss") { focusedTextField = nil }
                }
            }
        }
        .onAppear {
            vm.retrieveUser()
        }
        .alert(item: $vm.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
