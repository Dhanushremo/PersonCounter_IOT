package com.mvc.mqtt;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence;
import org.springframework.stereotype.Component;

@Component
public class MqttSubscriber implements MqttCallback {
    private static final String BROKER_URL = "tcp://broker.mqtt.cool:1883"; // Your MQTT broker
    private static final String TOPIC = "mtieat/counter"; // Your topic
    private static final String CLIENT_ID = "spring-mqtt-subscriber";

    private volatile String personCount = "0"; // Default count is 0

    public MqttSubscriber() {
        try {
            MqttClient client = new MqttClient(BROKER_URL, CLIENT_ID, new MemoryPersistence());
            client.setCallback(this);
            client.connect();
            client.subscribe(TOPIC);
            System.out.println("Subscribed to topic: " + TOPIC);
        } catch (MqttException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void connectionLost(Throwable cause) {
        System.out.println("MQTT connection lost: " + cause.getMessage());
    }

    @Override
    public void messageArrived(String topic, MqttMessage message) {
        String receivedMessage = new String(message.getPayload());
        System.out.println("Received message: " + receivedMessage);
        this.personCount = receivedMessage;
    }

    @Override
    public void deliveryComplete(IMqttDeliveryToken token) {}

    public String getPersonCount() {
        return personCount;
    }
}
