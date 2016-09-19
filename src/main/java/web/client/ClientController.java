package web.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClientController {

    @RequestMapping(value = "/client", method = RequestMethod.GET)
    public String index(){
        return "client/client";
    }
}
