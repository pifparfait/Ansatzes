OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];

h q[1];
h q[2];
h q[3];
h q[4];
cx q[3],q[2];
u1(2*pi/10) q[2];
cx q[3],q[2];
cx q[4],q[2];
u1(2*pi/10) q[2];
cx q[4],q[2];
cx q[1],q[2];
cx q[4],q[3];
u1(2*pi/10) q[2];
u1(2*pi/10) q[3];
cx q[1],q[2];
cx q[4],q[3];
u3(3*pi/10,-pi/2,pi/2) q[1];
u3(3*pi/10,-pi/2,pi/2) q[2];
u3(3*pi/10,-pi/2,pi/2) q[3];
u3(3*pi/10,-pi/2,pi/2) q[4];
cx q[3],q[2];
u1(-4*pi/10) q[2];
cx q[3],q[2];
cx q[4],q[2];
u1(-4*pi/10) q[2];
cx q[4],q[2];
cx q[1],q[2];
cx q[4],q[3];
u1(-4*pi/10) q[2];
u1(-4*pi/10) q[3];
cx q[1],q[2];
cx q[4],q[3];
u3(pi/10,-pi/2,pi/2) q[1];
u3(pi/10,-pi/2,pi/2) q[2];
u3(pi/10,-pi/2,pi/2) q[3];
u3(pi/10,-pi/2,pi/2) q[4];
barrier q[0],q[1],q[4],q[3],q[2];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];