.class public final Lcom/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 75
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [J

    .line 76
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [F

    .line 77
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [D

    .line 78
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Z

    .line 79
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [[B

    .line 81
    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v0, [B

    .line 82
    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method static makeTag(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
