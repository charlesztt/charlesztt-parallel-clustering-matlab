function CUDA_decision = CUDA_enabled()
%CUDA_decision will run a code and decide if this computer supports CUDA
%calulation. It returns 1 when the computer supports MATLAB CUDA and 0 when
%doesn't
num_of_gpus=gpuDeviceCount;
if num_of_gpus==0
    CUDA_decision=0;
else
    for n=1:num_of_gpus
        result=gpuDevice(n);
        compute_capability=str2double(result.ComputeCapability);
        if compute_capability<1.3
            CUDA_decision=0;
        else
            CUDA_decision=1;
        end
    end
end

end

