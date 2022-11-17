COEN 241
Cloud Computing
HOMEWORK-3
MININET AND OPENFLOW
REPORT




Piyush Kulkarni
ID: 1629006


—


Task 1 - Defining custom topologies



1. What is the output of “nodes” and “net”
Answer: 
mininet> nodes gives all the nodes in the current topology

mininet> net displays all the links in the current topology.
It is observed that the interface eth0 of the host h1 is connected to eth2 of switch s3 and the interface eth0 of host h2 is connected to eth3 of switch s3, and so on.


2. What is the output of “h7 ifconfig”
Answer: This command displays the IP address, broadcast address and MAC address of the host h7.
  


—


Task 2 - Analyze the “of_tutorial’ controller


1. Draw the function call graph of this controller. For example, once a packet comes to the
controller, which function is the first to be called, which one is the second, and so forth?
  

2. Have h1 ping h2, and h1 ping h8 for 100 times (e.g., h1 ping -c100 p2).


a. How long does it take (on average) to ping for each case?
h1 ping h2 : 7.060 ms
h1 ping h8 : 28.943


b. What is the minimum and maximum ping you have observed?
h1 ping h2:
minimum -> 0.778
maximum -> 194.161
h1 ping h8:
minimum -> 9.007
maximum -> 312.170




c. What is the difference, and why?
It is observed that the ping observed for h1 ping h8 is significantly higher than h1 ping h8. 
The main reason for this could be the multiple number of switches that a packet must be transmitted through, from h1 to h8, as compared to just one switch between h1 and h8. 




3. Run “iperf h1 h2” and “iperf h1 h8”

a. What is “iperf” used for?
iperf does performance evaluation of the network. It runs regression tests between the specified nodes. Returns two-element array of [ server, client ] speeds.


b. What is the throughput for each case?
        h2 h2:
                Server - 8.00 Mbits/sec
                Client - 9.06 Mbits/sec


        h1 h8:
                Server - 3.46 Mbits/sec
                Client - 3.94 Mbits/sec


c. What is the difference, and explain the reasons for the difference.
It is observed that the throughput observed for h1 ping h8 is less than half of that observed for h1 ping h8. It takes more time for a packet to pass through multiple switches, as a switch has to broadcast every incoming packet to every other node.
Whereas h1 and h2 have just one switch between them, resulting in a faster packet transfer rate.




4. Which of the switches observe traffic? 
All switches observe traffic.


Task 3: MAC Learning Controller


1. Describe how the above code works, such as how the "MAC to Port" map is established. You could use a ‘ping’ example to describe the establishment process (e.g., h1 ping h2). 
Considering operation h1 ping h2, the packet has to be transmitted through switch ‘s3’. Here, when the packet p arrives from h1 on one of its input ports, mac_to_port{} is checked for the occurrence of  packet.src as key, and value as the input port. This indicates that the port can be used every time a packet is to be transmitted to the host specified in the key.
If the pair is present, the packet is sent to the specified port.
If not, the switch learns by adding the key,value pair  to mac_to_port{}, and the packet is sent out to every port other than the input port.



2. Have h1 ping h2, and h1 ping h8 for 100 times (e.g., h1 ping -c100 p2). 

a. How long did it take (on average) to ping for each case?


h1 ping h2 : 11.274  ms
h1 ping h8 : 35.437 ms


b. What is the minimum and maximum ping you have observed? 


h1 ping h2:
minimum -> 1.171 ms
maximum -> 102.988 ms
h1 ping h8:
minimum -> 12.062 ms
maximum -> 230.0 ms


c. Any difference from Task 2 and why do you think there is a change if there is?
Although the average ping is slightly higher than that of Task2, the minimum and maximum values of ping are quite lower than those observed in task2. This is because the switch now has a better understanding of the network, through storing known mac addresses, and reducing the need of broadcasting an incoming packet to every other switch. Now it has to make a transfer to one known address, which reduces the time spent in overall transmission, and thus the ping.


3. Run “iperf h1 h2” and “iperf h1 h8”.   

a. What is the throughput for each case?
        h2 h2:
                Server - 646 Kbits/sec
                Client - 824 Kbits/sec


        h1 h8:
                Server - 148 Kbits/sec
                Client - 332 Kbits/sec