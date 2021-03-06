% #############################################################################################
% #########  YOU SHOULD MAINTAIN THE RETURN TYPE AND SHAPE AS PROVIDED IN STARTER CODE   ######
% #############################################################################################

function [output] = pooling_layer_forward(input, layer)
% Pooling forward

% Args:
% input: a cell array contains output data and shape information
% layer: one cnn layer, defined in testLeNet.m

% Returns:
% output: a cell array contains output data and shape information

h_in = input.height;
w_in = input.width;
c = input.channel;
batch_size = input.batch_size;
k = layer.k;
pad = layer.pad;
stride = layer.stride;

h_out = (h_in + 2*pad - k) / stride + 1;
w_out = (w_in + 2*pad - k) / stride + 1;

output.height = h_out;
output.width = w_out;
output.channel = c;
output.batch_size = batch_size;

output.data = zeros([h_out * w_out * c, batch_size]);

% TODO: your implementation goes below this comment
% implementation begins
tmp = zeros(h_out, w_out, c);
for n = 1:batch_size
    input_n = input.data(:, n);
    input_n = reshape(input_n, [h_in, w_in, c]);
    for ch = 1:c
       for i = 1:h_out
           for j = 1:w_out
               pi = (i-1)*stride;
               pj = (j-1)*stride;
               pooling = input_n(pi+1:pi+k,pj+1:pj+k,ch);
               max_val = max(max(pooling));
               tmp(i, j, ch) = max_val;
           end
       end
    end
    tmp_new = reshape(tmp,[h_out*w_out*c,1]);
    output.data(:,n) = tmp_new;
end
% implementation ends

assert(all(size(output.data) == [h_out * w_out * c, batch_size]), 'output.data does not have the right length');

end

