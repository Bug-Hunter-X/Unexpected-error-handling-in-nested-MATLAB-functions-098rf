function result = myFunction(input)
  %Improved error handling to allow for proper error propagation
  try
    if input < 0
        error('Input must be non-negative');
    end
    % More code here...
  catch err
    % rethrow to propagate to caller
    rethrow(err);
  end
end

% Example usage:
test_input = -5;

try
    result = myFunction(test_input);
catch err
    % Display the original error message
    fprintf('An error occurred: %s\n', err.message);
    % Optional: add more specific handling based on error type
    % e.g., if strcmp(err.identifier,'myFunction:negativeInput')
    %     disp('Specific handling for negative input error');
    % end
end