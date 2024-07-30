#include <iostream>
#include <asio.hpp>


void print(const std::error_code& /*e*/,asio::steady_timer t2)
{
  std::cout << "print Hello, world!" << std::endl;
}


int main()
{
    asio::io_context io;

    // 同步使用计时器
    // asio::steady_timer t(io, asio::chrono::seconds(5));
    // t.wait();
    
    // std::cout << "Hello, world!" << std::endl;

    // 异步使用计时器
    asio::steady_timer t2(io, asio::chrono::seconds(5));
    
    t2.async_wait(&print);
    io.run();

    return 0;
}