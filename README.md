# Unexpected Error Handling in Nested MATLAB Functions

This repository demonstrates an uncommon MATLAB error related to the use of the `error` function within nested functions. The error occurs when an error is thrown in a nested function, but the way the error is handled doesn't allow the caller function to properly process the error or display the relevant information.