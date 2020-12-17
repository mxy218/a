.class public Lcom/meizu/common/datetimepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static getDaysInMonth(II)I
    .registers 2

    packed-switch p0, :pswitch_data_1c

    .line 79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b  #0x3, 0x5, 0x8, 0xa
    const/16 p0, 0x1e

    return p0

    .line 77
    :pswitch_e  #0x1
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_15

    const/16 p0, 0x1d

    goto :goto_17

    :cond_15
    const/16 p0, 0x1c

    :goto_17
    return p0

    :pswitch_18  #0x0, 0x2, 0x4, 0x6, 0x7, 0x9, 0xb
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_e  #00000001
        :pswitch_18  #00000002
        :pswitch_b  #00000003
        :pswitch_18  #00000004
        :pswitch_b  #00000005
        :pswitch_18  #00000006
        :pswitch_18  #00000007
        :pswitch_b  #00000008
        :pswitch_18  #00000009
        :pswitch_b  #0000000a
        :pswitch_18  #0000000b
    .end packed-switch
.end method
