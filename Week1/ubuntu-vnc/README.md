# Ubuntu container với VNC Server

Trong bài thực hành này, em đã viết một Docker image dựa trên Ubuntu, sử dụng **Xfce** làm graphical desktop environment và **tightvncserver** làm VNC server. Em sử dụng _Remmina_ làm VNC viewer để kết nối với VNC server trên Docker container.

## Cách build Docker image và chạy container

Đầu tiên, clone repo về và mở một terminal ở thư mục này. Chạy lệnh sau để build image với tên ubuntu_vnc:

    docker build -t ubuntu_vnc .

Chạy lệnh sau để chạy container:

    docker run -d --name ubuntu_vnc -p 59010:5901 ubuntu_vnc

Chạy lệnh sau để trước khi đóng container (lưu ý: cần chạy lệnh này để đóng vncserver trước khi đóng container. Nếu không chạy lệnh này thì khi mở lại container sẽ không kết nối đến vncserver được):

    docker exec ubuntu_vnc bash ./shutdown.sh && docker stop ubuntu_vnc

Mở một VNC viewer như Remmina, kết nối tới server là `127.0.0.1:59010` với tài khoản là `remote_user` và mật khẩu là `123456`.

### Kết quả chạy như sau:

1. Build image và chạy container

![Build and Run](/Week1/ubuntu-vnc/result/Screenshot%20from%202024-02-19%2010-21-46.png "Build image và chạy container")

2. Cấu hình kết nối trên Remmina

![Set up VNC Viewer](/Week1/ubuntu-vnc/result/Screenshot%20from%202024-02-19%2010-22-38.png "Remmina setup")

3. Kết nối thành công

![Successfully connected](/Week1/ubuntu-vnc/result/Screenshot%20from%202024-02-19%2010-23-37.png "Remmina connected to VNC Server")
