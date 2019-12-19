# JetsonCAN

$ git clone https://github.com/jetsonhacks/buildJetsonTX2Kernel.git

$ cd buildJetsonTX2Kernel

# For L4T 27.1, do the following:

$ git checkout vL4T27.1

$ ./getKernelSources.sh

$ ./makeKernel.sh

$ ./copyImage.sh
