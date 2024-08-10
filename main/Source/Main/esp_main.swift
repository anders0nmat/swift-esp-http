
import WiFi
import HttpServer
import FreeRTOS

@_cdecl("app_main")
func app_main() {
	print("🏎️  + 📦   Hello from an Embedded Swift Package")

	WiFi.connect(
		to: "<Your WiFi SSID>",
		password: "<Your WiFi Password>",
		securityLevel: .WPA2)

	let server = try! HttpServer()
	try! server.register(.GET, "/") { req in
		req.respond(with: "Hello from esp32c6")
	}

	while true {
		// Because HttpServer runs in its own thread, we only need to keep the `server`-object alive
		Task.delay(for: .hours(1))
	}
}

