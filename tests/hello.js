function sayHello(name) {
    return "Hello, " + name;
}

var name = "Foo";

console.log(sayHello(name));

(function() {console.log("from anon");})();
