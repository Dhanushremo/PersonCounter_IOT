<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
#include <WiFi.h>
#include <WiFiClient.h>
#include <PubSubClient.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_RESET    -1 // Reset pin (not used)
#define SCREEN_ADDRESS 0x3C // I2C address for the OLED display

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// Define the pins for the IR sensors
const int sensorInPin = 19;  // Entrance IR sensor connected to pin 6
const int sensorOutPin = 18; // Exit IR sensor connected to pin 7
const int ledPin = 4;      // Optional LED connected to pin 13

// Variables to store the count of people
int peopleCount = 0;

// Variables to store the last state of sensors
int lastSensorInState = HIGH;
int lastSensorOutState = HIGH;

// Update these with values suitable for your network.

const char* ssid = "DhanushRemo";
const char* password = "12345678";
const char* mqtt_server = "broker.mqtt.cool";

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE	(50)
char msg[MSG_BUFFER_SIZE];
int value = 0;

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();

  // Switch on the LED if an 1 was received as first character
  if ((char)payload[0] == '1') {
    //digitalWrite(BUILTIN_LED, LOW);   // Turn the LED on (Note that LOW is the voltage level
    // but actually the LED is on; this is because
    // it is active low on the ESP-01)
  } else {
   // digitalWrite(BUILTIN_LED, HIGH);  // Turn the LED off by making the voltage HIGH
  }

}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "acenaar-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("mtieat/counter", "hello world");
      // ... and resubscribe
      client.subscribe("inTopic");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void setup() {
 // pinMode(BUILTIN_LED, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  pinMode(sensorInPin, INPUT);
  pinMode(sensorOutPin, INPUT);
  pinMode(ledPin, OUTPUT);

  Serial.println("People Counter Initialized");

  // Initialize the OLED display
  if (!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println("SSD1306 allocation failed");
    for (;;);
  }
  display.clearDisplay();
  display.display();
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  // Read the current state of the entrance and exit IR sensors
  int sensorInState = digitalRead(sensorInPin);
  int sensorOutState = digitalRead(sensorOutPin);

  // Check for entrance (if sensor state goes from HIGH to LOW)
  if (sensorInState == LOW && lastSensorInState == HIGH) {
    peopleCount++;
    digitalWrite(ledPin, HIGH);
    Serial.print("Person Entered. Count: ");
    Serial.println(peopleCount);
    delay(500);
  }

  // Check for exit (if sensor state goes from HIGH to LOW)
  if (sensorOutState == LOW && lastSensorOutState == HIGH) {
    if (peopleCount > 0) {
      peopleCount--;
      digitalWrite(ledPin, LOW);
      Serial.print("Person Exited. Count: ");
      Serial.println(peopleCount);
      delay(500);
    }
  }

  // Update the last sensor states
  lastSensorInState = sensorInState;
  lastSensorOutState = sensorOutState;

  // Update the OLED display
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(10, 10);
  display.print("People Counter:");

  display.setTextSize(3);
  display.setCursor(35, 30);
  display.print(peopleCount);

  display.display();
  snprintf (msg, MSG_BUFFER_SIZE, "Present #%ld", peopleCount);
  Serial.print("Publish message: ");
  Serial.println(msg);
  client.publish("mtieat/counter", msg);
  delay(1500);
 }
</body>
</html>