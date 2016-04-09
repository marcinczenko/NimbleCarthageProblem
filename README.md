# NimbleCarthageProblem

This repository contains a simple iOS project to demonstrate and document the problem I have encounter when
working with Nimble and Carthage.

The project has one framework with one Swift file containing one Swift class. The framework has associated tests target
generated by Xcode on project creation:

![ProjectCreation](images/ProjectCreation.png)

Now I create a framework:

![CreateFramework](images/CreateFramework.png)


![FrameworkSettings](images/FrameworkSettings.png)

For simplicity, the `Host Application` setting for the `ExampleFrameworkTests` target is set to `None`. We are only
interested in testing the framework, not the app.

![HostApplication](images/HostApplication.png)

Next, I add an example Swift class - `ExampleClass` - to the framework in file `ExampleClass.swift`:

    import Foundation
    
    class ExampleClass {
        func hello() -> String {
            return "hello"
        }
    }

and `ExampleClassTests.swift` to the `ExampleFrameworkTests` target:

    import XCTest
    @testable import ExampleFramework
    
    class ExampleFrameworkTests: XCTestCase {
        
        func testExample() {
            XCTAssertEqual("hello", ExampleClass().hello())
        }
    }

    
I also created a convenience scheme for the `ExampleFrameworkTests` target:

![SchemeBuild](images/SchemeBuild.png)

![SchemeRun](images/SchemeRun.png)

![SchemeTest](images/SchemeTest.png)

I run the tests and everything pass. All fine.

## Bot

Now I create a bot for `ExampleFrameworkTests` scheme - manual trigger, on branch master:

![BotConfiguration1](images/BotConfiguration1.png)

![BotConfiguration2](images/BotConfiguration2.png)

The bot runs successfully.

![BotSummaryXCTest](images/BotSummaryXCTest.png)

