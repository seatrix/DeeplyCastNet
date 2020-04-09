function [out,msg_out] = MASTER_modem_tx(in,filename)

% This function models the entire transmit path of the modem from the
% message from the host PC to the pressure generated by the transducer

% Inputs:
% in: vector containing pressure data from propagation model
% filename: filename of text file containing modem rx parameters

% Outputs:
% out: received message with received timestamp added to front

[msg_out,dig_out] = modem_ctrl_tx(in,filename);
out = modem_analog_tx(dig_out);

end