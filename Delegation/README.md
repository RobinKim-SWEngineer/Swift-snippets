Delegation can be implemented through protocol. Protocol is like a qualification that a class or struct, which conforms to certain protocol must have.

In this Restaurant example there're 3 objects: Robert ( Task delegator ), Michal ( Cook ) and Martin ( Deliverer ).

Michal and Martin should have qualification for their role, and Robert doesn't need to know how and who cook & deliver.

Robert just simply gives the order to those delegates who are qualified to cook and deliver.

Michal and Martin aren't supposed to have the control about "when" they should start working since that is the job of Robert ( Task delegator ).
