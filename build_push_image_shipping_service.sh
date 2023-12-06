# Membuat Docker image dari Dockerfile sesuai tag Github Container Registry
docker build -t ghcr.io/dwi-adhi-soegiarto/shipping-service:latest . 

# Login ke Github Container Registry
echo $PAT | docker login ghcr.io --username dwi-adhi-soegiarto --password-stdin 

# Mengunggah image ke Github Container Registry
docker push ghcr.io/dwi-adhi-soegiarto/shipping-service:latest