fiber = Fiber.new do
  p 'Hello'
  Fiber.yield
  p 'Hello2'
end

fiber.resume #=> 'Hello'
fiber.resume #=> 'Hello2'
fiber.resume #=> Error
