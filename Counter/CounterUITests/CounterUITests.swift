import XCTest

final class ContentViewUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        
        // Inicjalizacja i uruchomienie aplikacji
        app = XCUIApplication()
        app.launch()
        sleep(1)  // Dodaj opóźnienie po uruchomieniu aplikacji
    }

    override func tearDownWithError() throws {
        // Zamknięcie aplikacji
        app.terminate()
        app = nil
    }

    func testCounterIncrement() throws {
        // 1. Znajdź elementy interfejsu
        let countLabel = app.staticTexts["countLabel"]
        let incrementButton = app.buttons["incrementButton"]

        // Dodaj logowanie
        print("Count label exists: \(countLabel.exists)")
        print("Increment button exists: \(incrementButton.exists)")

        // 2. Sprawdź początkową wartość licznika
        XCTAssertTrue(countLabel.exists, "The count label should exist initially.")
        XCTAssertEqual(countLabel.label, "Count: 0 times", "Initial count should be 0")

        // 3. Kliknij przycisk "Click me!"
        incrementButton.tap()
        sleep(1)  // Dodaj opóźnienie po kliknięciu

        // 4. Sprawdź, czy wartość licznika została zwiększona
        XCTAssertEqual(countLabel.label, "Count: 1 times", "Count should increment by 1")
    }

    func testCounterReset() throws {
        // 1. Znajdź elementy interfejsu
        let countLabel = app.staticTexts["countLabel"]
        let incrementButton = app.buttons["incrementButton"]
        let resetButton = app.buttons["resetButton"]

        // Dodaj logowanie
        print("Count label exists: \(countLabel.exists)")
        print("Increment button exists: \(incrementButton.exists)")
        print("Reset button exists: \(resetButton.exists)")

        // 2. Kliknij przycisk "Click me!" kilka razy
        incrementButton.tap()
        incrementButton.tap()
        sleep(1)  // Dodaj opóźnienie po kliknięciach

        // 3. Sprawdź, czy licznik został zwiększony
        XCTAssertEqual(countLabel.label, "Count: 2 times", "Count should increment by 2")

        // 4. Kliknij przycisk "Reset"
        resetButton.tap()
        sleep(1)  // Dodaj opóźnienie po kliknięciu

        // 5. Sprawdź, czy licznik został zresetowany
        XCTAssertEqual(countLabel.label, "Count: 0 times", "Count should reset to 0")
    }
}
