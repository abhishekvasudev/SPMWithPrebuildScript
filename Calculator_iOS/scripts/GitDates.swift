import Foundation

@main
enum GitDates {
    
    static func main() {
        print("GitDates working")
        let test = runGitCommand("log")
        print("Git Log = ")
        print("\(test)")
    }
    
    static func runGitCommand(_ command: String) -> String {
        let task = Process()
        task.launchPath = "/usr/bin/env"
        task.arguments = ["git"] + command.components(separatedBy: " ")
        
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: data, encoding: .utf8) ?? ""
    }
    
    public static func getCreatedDate(_ path: String) -> String {
        let createdDateCommand = "log --date=format:'%d/%m/%Y' --pretty=format:'%cd' -- \(path)"
        return runGitCommand(createdDateCommand)
    }
    
    public static func getUpdatedDate(_ path: String) -> String {
        let updatedDateCommand = "log --date=format:'%d/%m/%Y' --pretty=format:'%cd' -- "+"\(path)"+" | head -n 1"
        return runGitCommand(updatedDateCommand)
    }
}
