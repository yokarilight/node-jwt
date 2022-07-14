FROM node:alpine

# COPY：複製當前目錄到容器中的 /workspace。用意是將程式碼，複製到容器中執行。
COPY . /workspace

# WORKDIR：這邊是指容器的工作目錄，就像 cd workspace 意思一樣，因為我們把檔案複製於該目錄，所以一同切換目錄。
WORKDIR /workspace

# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# EXPOSE：將容器的 4001 port 對外公開。
EXPOSE 4001

# CMD：也是執行腳本命令（用於部署完畢的指令）
CMD npm start
