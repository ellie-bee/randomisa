### Rules
1. Anyone can suggest anything
2. Nothing can be denied (unless I don't like it)
3. if multiple answers, take the average of those answers
### Register architecture
  16 deep belt
  bit width: 10.37 fixed point arithmetic
### Ram
ram word width: 37bits
ram word count: 1738
ram word lifetime: 10k cycles
If you don't refresh before 10k cycles
* ECA rule is applied to that cell

add
sub
and
or
xor
set corruption rule -- undocumented
subleq
beq
load wd
call
return
mult
div
sqrt
add-belt-reduction 
actually-destructive-read -- if clock cycle odd marks cell as unwritable
destructive-read -- undocumented instruction
overlock
	power off fpga/block all clock signals permanently (basically halt lmao)
store-to-the-address-of-the-last-item-of-the-belt * the value of the first item of the belt
reject inputs for 10 minutes
print based on the addresses in the belt
permute-belt
jump-if-69
	if entry 8 in the belt is 69, then jump to the address specified by the 3rd location of the belt
pigeon-write -- takes 100 cycles to write to a location in memory
pigeon-read -- takes 100 cycles to read to a location in memory
	-- not destructive
		-- actually sends your data to the NSA
feed-pigeons
	-- if you don't feed the pigeons every 400 cycles they die and memory in flight
	 -- is lost
	 -- if you overfeed the pigeons they get fast, and memory access take twice as long
	 -- if you overfeed a fat pigeon, it dies
	 -- food is based on the ascii in the belt
	 [s,e,e,d, ...] good
	 [sugar...] bad lmao
	 [coke...] (fast 100 cycles, but bad)
send-pigeon-to-gym
		takes 100 cycles, can be done every 1600 cycles
		makes the specified pigeon not fat
 push-names -- undocumented
	 starting from belt location 2, write the names of the creators into ram










