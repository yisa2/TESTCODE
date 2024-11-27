/**
 * 定时器：每两秒执行与一次任务
 */
#ifdef _WIN32
#define _WIN32_WINNT 0x0601
#endif

#include <iostream>
#include <asio.hpp>
#include <chrono>

void TimerHandler(const asio::error_code& err,asio::steady_timer& timer);

int main()
{
    try
    {
        // 创建 io_context
        asio::io_context io_context;

        // 创建一个定时器 设置为2秒超时
        asio::steady_timer timer(io_context, std::chrono::seconds(2));

        // 设置定时器回调函数
        timer.async_wait(
            [&timer](const asio::error_code& ec){ TimerHandler(ec,timer);}
        );
 
        // 运行 io_context 处理异步事件
        io_context.run(); 
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << '\n';
    }
}
void TimerHandler(const asio::error_code& error,asio::steady_timer& timer)
{
    if(!error){
        std::cout<< "Timer expired!"<<std::endl;

        // 需要 重新启动定时器 行程循环定时
        timer.expires_after(std::chrono::seconds(2));
        timer.async_wait(
            [&timer](const asio::error_code& ec){ TimerHandler(ec,timer);}
        );
    }else{
        std::cout<<"Error: "<<error.message()<<std::endl;
    }
}
