-module(ephp_util).
-compile([warnings_as_errors]).

-export([to_bin/1]).

-spec to_bin(A :: binary() | string() | integer() | undefined) -> binary().

to_bin(A) when is_binary(A) ->
    A; 

to_bin(A) when is_list(A) -> 
    list_to_binary(A);  

to_bin(A) when is_integer(A) -> 
    to_bin(integer_to_list(A)); 

to_bin(A) when is_float(A) -> 
    to_bin(float_to_list(A));

to_bin(undefined) -> <<>>. 
