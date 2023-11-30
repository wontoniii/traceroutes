FROM golang:bookworm

# Install support libraries
RUN apt update
RUN  apt -y install git-all 
RUN  apt -y install python3 
RUN  apt -y install python3-pip 

# Install capture libraries
RUN apt -y install git-all python3 python3-pip && \
  apt -y install libpcap0.8 libpcap0.8-dev && \
  apt -y -q install wget lsb-release gnupg && \
  apt -y install tcpdump && \
  apt -y install traceroute 

# Install jupyter 
RUN pip3 install notebook --break-system-packages && \
  pip3 install pandas matplotlib scikit-learn numpy seaborn --break-system-packages

# Install chromium
RUN apt -y install chromium

# Install scamper
RUN apt -y install scamper

# Install go tools
RUN go install golang.org/x/tools/gopls@latest; go install github.com/ramya-rao-a/go-outline; go install github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest; go install github.com/ramya-rao-a/go-outline@latest; go install github.com/go-delve/delve/cmd/dlv; go install github.com/go-delve/delve/cmd/dlv@master; go install honnef.co/go/tools/cmd/staticcheck@latest

# Add folder to drop output.
RUN mkdir /out

# Compile traffic refinery
WORKDIR /home
RUN git clone https://github.com/inria-muse/service-traceroute.git
WORKDIR /home/service-traceroute
RUN go mod tidy
RUN make

# # Get ready ro go
WORKDIR /home