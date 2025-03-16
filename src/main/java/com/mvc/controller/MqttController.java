package com.mvc.controller;

import com.mvc.mqtt.MqttSubscriber;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/dashboard")
public class MqttController {

    @Autowired
    private MqttSubscriber mqttSubscriber;

    @GetMapping("/dashboard")
    public String showSubscriberPage(Model model) {
        model.addAttribute("personCount", mqttSubscriber.getPersonCount()); // Get real MQTT data
        return "subscriber"; // subscriber.jsp
    }
}
