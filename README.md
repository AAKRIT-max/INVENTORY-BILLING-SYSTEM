# Enterprise Inventory & Smart Billing System (`OOP-11`)
### Department of Computer Science & Engineering, Sarala Birla University, Ranchi
**Course:** Object-Oriented Programming Using C++  
**Academic Session:** 2026–2027  
**Project Guide:** Dr. Biswarup Samanta (Dean of Students Welfare, Asso. Professor, Dept. of CSE)

---

## Quick Start (How to Build and Run)

### Requirements
* Windows 10/11 (or Linux/macOS)
* MinGW GCC (`g++`) $\ge$ 6.3 or MSVC (C++14/C++17 supported)

### Option 1: Using Windows Batch Scripts (Recommended)
1. **Build both the Main App and the Test Suite:**
   ```cmd
   build.bat
   ```
2. **Launch the Application:**
   ```cmd
   run.bat
   ```
3. **Execute the 10-Test Case Suite:**
   ```cmd
   run_tests.bat
   ```

### Option 2: Using GNU Make
```bash
make
./bin/inventory_billing    # Run Main App
./bin/test_runner          # Run Tests
```

---

## Directory Structure

```text
InventoryBillingSystem/
├── build.bat                   <-- 1-click build script
├── run.bat                     <-- Application launch script
├── run_tests.bat               <-- 10-test suite execution script
├── Makefile                    <-- GNU Make build configuration
├── README.md                   <-- Project setup & technical guide
├── bin/                        <-- Compiled binaries (.exe)
│   ├── inventory_billing.exe
│   └── test_runner.exe
├── data/                       <-- Persistent storage (.csv files)
│   ├── products.csv
│   ├── suppliers.csv
│   └── invoices.csv
├── docs/                       <-- All SBU Required Submission Documents
│   ├── 01_ProjectProposal.md   <-- Deliverable D1
│   ├── 02_SRS.md               <-- Deliverable D2
│   ├── 03_Design_UML.md        <-- Deliverable D3 (Architecture & UML)
│   ├── FinalReport.md          <-- Deliverable D6 (Full 10-chapter report)
│   ├── TestReport.md           <-- Official 10-Test Case Execution Log
│   ├── PresentationSlides.md   <-- 12-slide Viva Presentation Deck
│   ├── IndividualContribution.md <-- Team Role & Contribution Statement
│   └── VivaQuestionsAndAnswers.md <-- Answers to all 33 Handbook Viva Questions
├── include/                    <-- Header Files (.hpp)
│   ├── BillItem.hpp
│   ├── ConsoleUI.hpp
│   ├── Exceptions.hpp
│   ├── FilePersistence.hpp
│   ├── Inventory.hpp           <-- Generic Template Container
│   ├── Invoice.hpp
│   ├── PerishableProduct.hpp   <-- Derived Product (Polymorphism)
│   ├── Product.hpp             <-- Abstract Base Class
│   ├── StandardProduct.hpp     <-- Derived Product (Polymorphism)
│   └── Supplier.hpp
├── src/                        <-- C++ Implementation Files (.cpp)
│   ├── ConsoleUI.cpp
│   ├── Exceptions.cpp
│   ├── FilePersistence.cpp
│   ├── Invoice.cpp
│   ├── main.cpp                <-- Main console application entry
│   ├── PerishableProduct.cpp
│   ├── Product.cpp
│   ├── StandardProduct.cpp
│   └── Supplier.cpp
└── tests/
    └── test_runner.cpp         <-- Automated test suite verifying 10 scenarios
```

---

## Key OOP Concepts Demonstrated
1. **Inheritance & Abstraction:** Abstract base class `Product` extended by `StandardProduct` and `PerishableProduct`.
2. **Runtime Polymorphism:** Pure virtual functions (`calculateFinalPrice()`, `displayDetails()`, `serialize()`) dynamically called via base pointers.
3. **Encapsulation:** Protected state variables (`stockQuantity`, `unitPrice`, `minThreshold`) validated with accessors and invariant checks.
4. **Templates & Generic Programming:** `InventoryRepository<T>` template managing products and suppliers.
5. **STL Integration:** Extensive usage of `std::unordered_map`, `std::vector`, `std::shared_ptr`, and `<chrono>`.
6. **Custom Exception Handling:** `InsufficientStockException`, `ProductNotFoundException`, `InvalidDataException`.
7. **Operator Overloading:** Overloaded `+=`, `-=`, `==`, and `<<` operators.
8. **File Persistence:** Automatic disk serialization and recovery via CSV storage.

---

## Evaluation Checklist Alignment

| Evaluation Component | Marks | Deliverable / Evidence |
| :--- | :--- | :--- |
| Problem understanding, objectives, scope | 10 | `docs/01_ProjectProposal.md` |
| Requirements & design quality | 10 | `docs/02_SRS.md` & `docs/03_Design_UML.md` |
| Application of course concepts | 10 | Modular C++ hierarchy, templates, exceptions, polymorphism |
| Implementation & functionality | 10 | Complete, bug-free C++ codebase in `include/` and `src/` |
| Testing, correctness & performance | 10 | `docs/TestReport.md` & `bin/test_runner.exe` (10/10 PASS) |
| Documentation & references | 10 | `docs/FinalReport.md` (10 SBU Chapters) |
| Presentation / demo | 20 | `docs/PresentationSlides.md` & live console demo |
| Individual viva / code defence | 20 | `docs/VivaQuestionsAndAnswers.md` (All 33 questions answered) |
| **Total** | **100** | |
