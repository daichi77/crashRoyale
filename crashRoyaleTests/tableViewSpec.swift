import Quick
import Nimble
import crashRoyale

class tableViewSpec: QuickSpec {
    override func spec() {
        var tableView: TableView!
        beforeEach {
             tableView = TableView(width: 100, height: 500, barHeight: 50)
        }
        describe("tableView method test") {
            it ("return correct size of the tableView ") {
                expect(tableView.returnTableView().frame.width).to(equal(100))
                expect(tableView.returnTableView().frame.height).to(equal(450))
            }
        }
    }
}
