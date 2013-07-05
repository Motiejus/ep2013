-module(person_rpc_piqi_impl).
-compile(export_all).

-include("person_rpc_piqi_impl.hrl").

get(#person_rpc_get_input{id=Id, count=Count}) ->
    Recs = [
        #person{
            name="Yoda " ++ integer_to_list(I),
            id=Id,
            email="gmail@yoda" ++ integer_to_list(I) ++ ".com",
            phone=[#phone_number{number=integer_to_list(I*I), type=work}]
        } || I <- lists:seq(1, Count)],

    {ok, #person_rpc_get_output{records=Recs}}.
