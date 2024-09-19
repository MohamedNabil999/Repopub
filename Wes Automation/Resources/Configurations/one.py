from robot.api.deco import keyword

@keyword
def add_numbers(a, b):
    return a + b

@keyword
def greet(name):
    return f"Hello, {name}!"
