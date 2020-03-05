# Simple Apps on Kubernetes
Projek ini dibuat sesederhana mungkin guna implementasi penggunaan aplikasi pada lingkungan kubernetes. Aplikasi ini terdiri dari frontend dan backend. *Backend* adalah aplikasi REST API sederhana yang mengambil data dari http://numbersapi.com/ berdasarkan tanggal hari ini. *Frontend* adalah aplikasi sederhana yang mengambil data dari backend menggunakan domain internal pada lingkungan kubernetes.

## How to Run
### Prerequisites
Pastikan sudah terinstal docker, kubectl, dan helm.Sebelum menjalankan bash script, ubah terlebih dahulu <repository_url> pada bash script dan values pada helm chart.

### Deployment
Untuk men-*deploy* ke development gunakan perintah berikut:
```
./development.sh
```
Untuk men-*deploy* ke *staging* gunakan perintah berikut:
```
./staging.sh
```
Untuk men-*deploy* ke *production* gunakan perintah berikut:
```
./production.sh
```

