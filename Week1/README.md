# Bài tập về nhà tuần 1

## Docker và Docker Compose

**Docker** là một nền tảng hỗ trợ việc phát triển, vận chuyển (shipping) và chạy các ứng dụng trong các container. Một container là một môi trường nhẹ và tách biệt trong đó một ứng dụng và các phần phụ thuộc (dependency) của nó được đóng gói lại với nhau. Docker cho phép người dùng tạo, deploy và quản lý các container theo một cách thống nhất giữa các môi trường khác nhau. Sử dụng Docker giúp đơn giản hóa việc deploy phần mềm thông qua việc đảm bảo các phần mềm sẽ chạy ổn định trên bất kể môi trường deploy nào.

**Docker Compose** là một công cụ giúp đơn giản hóa việc quản lý các ứng dụng cần đến nhiều container. Nó sử dụng một tệp cấu hình YAML duy nhất để định nghĩa các dịch vụ, mạng và volume được sử dụng trong ứng dụng. Với Docker Compose, người dùng có thể bắt đầu, dừng và quản lý nhiều container như là một đơn vị thống nhất. Docker Compose đặc biệt hữu ích cho việc phối hợp các ứng dụng phức tạp với các dịch vụ được kết nối qua lại với nhau.

## Unix, Unix-like (\*nix), Linux và BSD

**Unix** là hệ điều hành được phát triển vào cuối thập niên 60 tại Bell Labs. Nó tuân theo một triết lý thiết kế mô-đun và nhấn mạnh sự đơn giản và khả năng kết hợp (composability). Nhiều hệ điều hành hiện đại, bao gồm Linux và BSD, bám theo nhiều nguyên lý thiết kế của Unix.

Các hệ điều hành giống Unix (**Unix-like** hay **\*nix**) có nhiều điểm tương đồng với Unix nhưng không kế thừa trực tiếp từ Unix. Các hệ điều hành giống Unix tuân theo các nguyên lý của Unix, như hệ thống tệp phân cấp, giao diện dòng lệnh (CLI), và cấu hình dựa trên văn bản thuần. Các ví dụ bao gồm Linux, BSD và macOS.

**BSD (Berkeley Software Distribution)** là một chuỗi các hệ điều hành giống Unix được phát triển tại Đại học California, Berkeley. BSD bao gồm nhiều biến thể như _FreeBSD_, _OpenBSD_ và _NetBSD_. BSD giới thiệu các tính năng như bộ nhớ ảo, kiểm soát tác vụ (job control) và trình soạn thảo vi.

**Linux** là một nhân hệ điều hành giống Unix do Linus Torvalds tạo ra vào năm 1991. Linux là nền tảng cho nhiều bản phân phối (distributions hay _distros_) Linux như _Ubuntu_, _Fedora_ và _CentOS_.

**macOS** (trước đây là Mac OS X) là hệ điều hành cho dòng máy Mac của Apple, và được kế thừa từ **BSD**. Nó dựa trên một lõi giống Unix là Darwin, và Darwin sử dụng nhiều thành phần của BSD. macOS được tích hợp chặt chẽ với phần cứng và dịch vụ của Apple.

## So sánh giữa Alpine và Ubuntu

**Alpine** là một bản phân phối Linux nhẹ được thiết kế cho các môi trường hạn chế tài nguyên và container. Alpine có một thiết kế tối giản tập trung vào sử dụng hiệu quả tài nguyên, khiến cho nó lý tưởng để làm Docker image. Alpine sử dụng thư viện muscl libc thay vì glibc để cung cấp các hàm thư viện C thiết yếu nhưng vẫn giữ được sự gọn nhẹ. Alpine cũng dùng BusyBox, là một bộ công cụ nhỏ gọn cung cấp các tính năng cơ bản của hơn 300 lệnh Unix thông dụng.

**Ubuntu** là một bản phân phối Linux phổ biến và giàu tính năng dựa trên Debian. Ubuntu cung cấp một bộ đa dạng các package và công cụ, và trải nghiệm người dùng thân thiện. Ubuntu rất linh hoạt và phù hợp với nhiều trường hợp sử dụng khác nhau, bao gồm máy tính cá nhân, server và triển khai đám mây. Tuy nhiên, Ubuntu có kích cỡ lớn hơn.

## VNC (Virtual Network Computing)

VNC là một hệ thống chia sẻ màn hình đồ họa cho phép điều khiển từ xa một máy tính khác qua mạng. Nó sử dụng giao thức Bộ đệm Khung Từ xa (Remote Frame Buffer - RFB) để truyển dữ liệu nhập từ bàn phím và chuột cũng như chuyển tiếp các cập nhật màn hình. VNC là độc lập nền tảng và nhiều VNC client có thể kết nối đồng thời tới một VNC server. VNC thường được sử dụng để hỗ trợ kỹ thuật từ xa và truy cập các tệp trên nhiều máy khác nhau.

## Kết quả thực hành

Kết quả thực hành ở [đây](/Week1/ubuntu-vnc/README.md).
