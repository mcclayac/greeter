import ballerina/http;

listener http:Listener httpListener = new (8080);

service / on httpListener {
    resource function get greeting() returns string { 
        return "Hello, World! - Tony"; 
    }

    resource function get greeting/[string name]() returns string { 
        return "Hello Theze nutz " + name; 
    }
}