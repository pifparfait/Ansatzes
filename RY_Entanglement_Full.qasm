OPENQASM 2.0;
include "qelib1.inc";
gate nD ( param ) q  {
  h q;
}

gate nG0 ( param ) q  {
  h q;
}

qreg q[4];
creg c[4];

h q[0];
h q[1];
h q[2];
h q[3];
ry(pi/2) q[0];
ry(pi/2) q[1];
ry(pi/2) q[2];
ry(pi/2) q[3];
barrier q[1],q[0],q[2],q[3];
cx q[0],q[1];
cx q[0],q[2];
cx q[0],q[3];
cx q[1],q[2];
cx q[1],q[3];
cx q[1],q[3];
barrier q[1],q[0],q[2],q[3];
ry(pi/2) q[0];
ry(pi/2) q[1];
ry(pi/2) q[2];
ry(pi/2) q[3];
barrier q[1],q[0],q[2],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];