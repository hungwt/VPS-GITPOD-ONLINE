echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "======================="
echo "tải ngrok..."
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "nhập token==>: " CRP
./ngrok authtoken $CRP 
clear
echo "======================="
echo     chọn vùng để chạy 
echo "======================="
echo "us - hoa kỳ"
echo "eu - châu âu"
echo "ap - singapore"
echo "au - châu úc (khuyên dùng)"
echo "sa - nam mỹ"
echo "jp - nhật"
echo "in - ấn độ"
read -p "chọn vùng==>: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "cài RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "bắt đầu RDP"
echo "===================================="
echo "===================================="
echo "tên : ubuntu"
echo "mật khẩu : ubuntu"
echo "địa chỉ:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Đừng đóng tab này để tiếp tục chạy RDP"
echo "RPD chạy 12 giờ"
echo "Chờ 1 phút để hoàn thành khởi động"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:20.04 > /dev/null 2>&1
