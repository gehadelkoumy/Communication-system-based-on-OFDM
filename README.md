## Communication-system-based-on-OFDM
This repository includes a semi-complete communication system based on OFDM. It consists of building multiple separate communication blocks that work in sequence.  
<br>
The figure shown below describes an OFDM-based transmitter:

  ![OFDM based transmitter](https://github.com/gehadelkoumy/readme-formatting/assets/68203785/62166318-049e-45fa-a5df-066d3cb0fdc6)


- The channel coding block takes as input the raw data bits for communication. The goal of 
channel coding is to help combat some of the impairments that arise from the communication 
channel. Here we use linear block codes.
-  The symbol mapper takes the coded bits and produces a corresponding set of modulation 
symbols according to the modulation technique used, like QPSK, 16 QAM, or 64 QAM.
- The pilot insertion block is used to help determine the channel for channel equalization
at the receiver.The pilots are known symbols that the transmitter and the receiver agree on;
they are inserted among the set of generated modulation symbols.
- The set of modulation symbols and pilot symbols are passed to an IFFT block to perform
OFDM-based modulation, and the output of the IFFT block is a sequence of OFDM symbols.
- A cyclic prefix insertion block is then used to facilitate channel equalization and prevent
Inter-Symbol Interference (ISI).

<br>

### The goal is to generate a probability of error curves against the signal-to-noise ratio for different modulations schemes and under different MIMO setups.
These curves are described in the attached PDF.
