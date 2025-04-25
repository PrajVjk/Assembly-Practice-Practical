.global asm_func1
asm_func1:
    # write below this line 
    ####################### 
    and t0, t0, x17
    srli t0, t0,13
    xori t0,t0,1

    and a0, zero, t0

    




    #######################
    # write above this line 
    ret     # do not remove!

.global asm_func2
asm_func2:
    # write below this line 
    #######################
    add t0,t0, x10
    addi t1, zero, 2

    rem t2, t0, t1
    addi t3, zero, 0

    bne t2,t3, else
    addi a0, zero, 1


    else:
    addi a0, zero, 0
    ret 


    #######################
    # write above this line 
    ret     # do not remove!

.global asm_func3
asm_func3:
    # write below this line 
    # N is a1 
    #stores each of the numbers into the corresponding index of an array. address is passed as a0 
    #######################

    addi s1, zero, 0    #index "i"


    loop:
    bge s1, a1, done    # condition check
    slli t0, s1, 2      #byte offset t0 = i * 4
    add t0, t0, a0      #address of array
    lw t1, 0(t0)        #t1 = arr[i]
    sw t1, 0(t0)        # arr[i] = arr[i]
    addi s1, s1, 1      # i = i +1
    j loop              # loop back top 
    

    done:
    ret
    

    #######################
    # write above this line 
    ret     # do not remove!