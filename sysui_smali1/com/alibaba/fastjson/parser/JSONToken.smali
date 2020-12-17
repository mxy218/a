.class public Lcom/alibaba/fastjson/parser/JSONToken;
.super Ljava/lang/Object;
.source "JSONToken.java"


# static fields
.field public static final COLON:I = 0x11

.field public static final COMMA:I = 0x10

.field public static final EOF:I = 0x14

.field public static final ERROR:I = 0x1

.field public static final FALSE:I = 0x7

.field public static final FIELD_NAME:I = 0x13

.field public static final IDENTIFIER:I = 0x12

.field public static final LBRACE:I = 0xc

.field public static final LBRACKET:I = 0xe

.field public static final LITERAL_FLOAT:I = 0x3

.field public static final LITERAL_INT:I = 0x2

.field public static final LITERAL_ISO8601_DATE:I = 0x5

.field public static final LITERAL_STRING:I = 0x4

.field public static final LPAREN:I = 0xa

.field public static final NEW:I = 0x9

.field public static final NULL:I = 0x8

.field public static final RBRACE:I = 0xd

.field public static final RBRACKET:I = 0xf

.field public static final RPAREN:I = 0xb

.field public static final SET:I = 0x15

.field public static final TREE_SET:I = 0x16

.field public static final TRUE:I = 0x6

.field public static final UNDEFINED:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_50

    const-string p0, "Unknown"

    return-object p0

    :pswitch_6  #0x17
    const-string/jumbo p0, "undefined"

    return-object p0

    :pswitch_a  #0x16
    const-string p0, "TreeSet"

    return-object p0

    :pswitch_d  #0x15
    const-string p0, "Set"

    return-object p0

    :pswitch_10  #0x14
    const-string p0, "EOF"

    return-object p0

    :pswitch_13  #0x13
    const-string p0, "fieldName"

    return-object p0

    :pswitch_16  #0x12
    const-string p0, "ident"

    return-object p0

    :pswitch_19  #0x11
    const-string p0, ":"

    return-object p0

    :pswitch_1c  #0x10
    const-string p0, ","

    return-object p0

    :pswitch_1f  #0xf
    const-string p0, "]"

    return-object p0

    :pswitch_22  #0xe
    const-string p0, "["

    return-object p0

    :pswitch_25  #0xd
    const-string/jumbo p0, "}"

    return-object p0

    :pswitch_29  #0xc
    const-string/jumbo p0, "{"

    return-object p0

    :pswitch_2d  #0xb
    const-string p0, ")"

    return-object p0

    :pswitch_30  #0xa
    const-string p0, "("

    return-object p0

    :pswitch_33  #0x9
    const-string p0, "new"

    return-object p0

    :pswitch_36  #0x8
    const-string p0, "null"

    return-object p0

    :pswitch_39  #0x7
    const-string p0, "false"

    return-object p0

    :pswitch_3c  #0x6
    const-string/jumbo p0, "true"

    return-object p0

    :pswitch_40  #0x5
    const-string p0, "iso8601"

    return-object p0

    :pswitch_43  #0x4
    const-string/jumbo p0, "string"

    return-object p0

    :pswitch_47  #0x3
    const-string p0, "float"

    return-object p0

    :pswitch_4a  #0x2
    const-string p0, "int"

    return-object p0

    :pswitch_4d  #0x1
    const-string p0, "error"

    return-object p0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_4a  #00000002
        :pswitch_47  #00000003
        :pswitch_43  #00000004
        :pswitch_40  #00000005
        :pswitch_3c  #00000006
        :pswitch_39  #00000007
        :pswitch_36  #00000008
        :pswitch_33  #00000009
        :pswitch_30  #0000000a
        :pswitch_2d  #0000000b
        :pswitch_29  #0000000c
        :pswitch_25  #0000000d
        :pswitch_22  #0000000e
        :pswitch_1f  #0000000f
        :pswitch_1c  #00000010
        :pswitch_19  #00000011
        :pswitch_16  #00000012
        :pswitch_13  #00000013
        :pswitch_10  #00000014
        :pswitch_d  #00000015
        :pswitch_a  #00000016
        :pswitch_6  #00000017
    .end packed-switch
.end method
