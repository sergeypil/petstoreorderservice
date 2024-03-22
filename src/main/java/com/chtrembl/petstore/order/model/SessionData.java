package com.chtrembl.petstore.order.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class SessionData {
    @JsonProperty("sessionId")
    private String sessionId;

    @JsonProperty("orderJson")
    private String orderJson;
}
