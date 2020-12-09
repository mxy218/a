.class public final Lcom/android/server/usb/descriptors/ByteStream;
.super Ljava/lang/Object;
.source "ByteStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteStream"


# instance fields
.field private final mBytes:[B

.field private mIndex:I

.field private mReadCount:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_8

    .line 65
    iput-object p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    .line 66
    return-void

    .line 63
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public advance(I)V
    .registers 7

    .line 184
    if-ltz p1, :cond_1e

    .line 189
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 190
    iget-object v3, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    .line 191
    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 192
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 196
    return-void

    .line 194
    :cond_18
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 186
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public available()I
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte()B
    .registers 4

    .line 102
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_17

    .line 103
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 104
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte v0, v0, v1

    return v0

    .line 106
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getReadCount()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return v0
.end method

.method public getUnsignedByte()I
    .registers 4

    .line 116
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_19

    .line 117
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 118
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 120
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public peekByte()B
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0

    .line 91
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public resetReadCount()V
    .registers 2

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 73
    return-void
.end method

.method public reverse(I)V
    .registers 4

    .line 205
    if-ltz p1, :cond_15

    .line 209
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    if-lt v0, p1, :cond_f

    .line 210
    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 211
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 215
    return-void

    .line 213
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 207
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public unpackUsbInt()I
    .registers 5

    .line 167
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_21

    .line 168
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v3

    .line 172
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    .line 174
    :cond_21
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public unpackUsbShort()I
    .registers 3

    .line 133
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    .line 134
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    .line 136
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0

    .line 138
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public unpackUsbTriple()I
    .registers 4

    .line 151
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1a

    .line 152
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    .line 155
    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    .line 157
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
