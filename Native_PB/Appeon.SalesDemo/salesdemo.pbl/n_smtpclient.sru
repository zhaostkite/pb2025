forward
global type n_smtpclient from smtpclient
end type
end forward

global type n_smtpclient from smtpclient
end type
global n_smtpclient n_smtpclient

forward prototypes
public function integer of_function_1 ()
public function integer of_function_2 ()
public function integer of_function_3 ()
public function integer test ()
end prototypes

public function integer of_function_1 ();Return 1
end function

public function integer of_function_2 ();Return 2
end function

public function integer of_function_3 ();Return 3
end function

public function integer test ();Return 0
end function

event onsendfinished;//Get the result here
//Messagebox('On Send Finshed Event','Handle =' + String(al_handle) + ', Number= ' + String(ai_number) + ", Text = " + as_text)
end event

on n_smtpclient.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_smtpclient.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

