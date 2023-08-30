pragma circom 2.0.0;
template Multiplier2 () {  
   //signal input
   signal input a;
   signal input b;
   
 // internal input from circuit
    signal x;
    signal y;

   signal output q;
     component and = AND();
     component not = NOT();
     component or = OR();

  
    and.a <== a;
    and.b <== b;
    x <== and.out;

    not.in <== b;
    y <== not.out;

    or.a <== x;
    or.b <== y;
    q <== or.out;

   
   
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

  


component main = Multiplier2();