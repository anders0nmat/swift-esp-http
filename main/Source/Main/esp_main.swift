
import WiFi
import HttpServer
import FreeRTOS
import EventLoop


@_cdecl("app_main")
func app_main() {
	print("🏎️  + 📦   Hello from an Embedded Swift Package")

    EventLoop.default.create()

	WiFi.connect(
		to: "<Your WiFi SSID>",
		password: "<Your WiFi Password>",
		securityLevel: .WPA2)
    
    print("WiFi connected.")

    let server = try! HttpServer()

    server.register(.GET, "/") { req in
        req.respondWith("Hello, World!")
    }

    print("Http Server started.")

	while true {
		// Because HttpServer runs in its own thread, we only need to keep the `server`-object alive
		Task.delay(for: .hours(1))
	}
}

