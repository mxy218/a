.class public final Landroid/hardware/biometrics/fingerprint/V2_1/RequestStatus;
.super Ljava/lang/Object;
.source "RequestStatus.java"


# static fields
.field public static final SYS_EACCES:I = -0xd

.field public static final SYS_EAGAIN:I = -0xb

.field public static final SYS_EBUSY:I = -0x10

.field public static final SYS_EFAULT:I = -0xe

.field public static final SYS_EINTR:I = -0x4

.field public static final SYS_EINVAL:I = -0x16

.field public static final SYS_EIO:I = -0x5

.field public static final SYS_ENOENT:I = -0x2

.field public static final SYS_ENOMEM:I = -0xc

.field public static final SYS_ENOSPC:I = -0x1c

.field public static final SYS_ETIMEDOUT:I = -0x6e

.field public static final SYS_OK:I = 0x0

.field public static final SYS_UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"  # I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 65
    const-string v2, "SYS_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x1

    .line 68
    :cond_12
    const-string v2, "SYS_OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    and-int/lit8 v2, p0, -0x2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_23

    .line 70
    const-string v2, "SYS_ENOENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, -0x2

    .line 73
    :cond_23
    and-int/lit8 v2, p0, -0x4

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2f

    .line 74
    const-string v2, "SYS_EINTR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, -0x4

    .line 77
    :cond_2f
    and-int/lit8 v2, p0, -0x5

    const/4 v3, -0x5

    if-ne v2, v3, :cond_3b

    .line 78
    const-string v2, "SYS_EIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, -0x5

    .line 81
    :cond_3b
    and-int/lit8 v2, p0, -0xb

    const/16 v3, -0xb

    if-ne v2, v3, :cond_48

    .line 82
    const-string v2, "SYS_EAGAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, -0xb

    .line 85
    :cond_48
    and-int/lit8 v2, p0, -0xc

    const/16 v3, -0xc

    if-ne v2, v3, :cond_55

    .line 86
    const-string v2, "SYS_ENOMEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, -0xc

    .line 89
    :cond_55
    and-int/lit8 v2, p0, -0xd

    const/16 v3, -0xd

    if-ne v2, v3, :cond_62

    .line 90
    const-string v2, "SYS_EACCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, -0xd

    .line 93
    :cond_62
    and-int/lit8 v2, p0, -0xe

    const/16 v3, -0xe

    if-ne v2, v3, :cond_6f

    .line 94
    const-string v2, "SYS_EFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, -0xe

    .line 97
    :cond_6f
    and-int/lit8 v2, p0, -0x10

    const/16 v3, -0x10

    if-ne v2, v3, :cond_7c

    .line 98
    const-string v2, "SYS_EBUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, -0x10

    .line 101
    :cond_7c
    and-int/lit8 v2, p0, -0x16

    const/16 v3, -0x16

    if-ne v2, v3, :cond_89

    .line 102
    const-string v2, "SYS_EINVAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, -0x16

    .line 105
    :cond_89
    and-int/lit8 v2, p0, -0x1c

    const/16 v3, -0x1c

    if-ne v2, v3, :cond_96

    .line 106
    const-string v2, "SYS_ENOSPC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, -0x1c

    .line 109
    :cond_96
    and-int/lit8 v2, p0, -0x6e

    const/16 v3, -0x6e

    if-ne v2, v3, :cond_a3

    .line 110
    const-string v2, "SYS_ETIMEDOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, -0x6e

    .line 113
    :cond_a3
    if-eq p0, v1, :cond_bf

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_bf
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"  # I

    .line 19
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 20
    const-string v0, "SYS_UNKNOWN"

    return-object v0

    .line 22
    :cond_6
    if-nez p0, :cond_b

    .line 23
    const-string v0, "SYS_OK"

    return-object v0

    .line 25
    :cond_b
    const/4 v0, -0x2

    if-ne p0, v0, :cond_11

    .line 26
    const-string v0, "SYS_ENOENT"

    return-object v0

    .line 28
    :cond_11
    const/4 v0, -0x4

    if-ne p0, v0, :cond_17

    .line 29
    const-string v0, "SYS_EINTR"

    return-object v0

    .line 31
    :cond_17
    const/4 v0, -0x5

    if-ne p0, v0, :cond_1d

    .line 32
    const-string v0, "SYS_EIO"

    return-object v0

    .line 34
    :cond_1d
    const/16 v0, -0xb

    if-ne p0, v0, :cond_24

    .line 35
    const-string v0, "SYS_EAGAIN"

    return-object v0

    .line 37
    :cond_24
    const/16 v0, -0xc

    if-ne p0, v0, :cond_2b

    .line 38
    const-string v0, "SYS_ENOMEM"

    return-object v0

    .line 40
    :cond_2b
    const/16 v0, -0xd

    if-ne p0, v0, :cond_32

    .line 41
    const-string v0, "SYS_EACCES"

    return-object v0

    .line 43
    :cond_32
    const/16 v0, -0xe

    if-ne p0, v0, :cond_39

    .line 44
    const-string v0, "SYS_EFAULT"

    return-object v0

    .line 46
    :cond_39
    const/16 v0, -0x10

    if-ne p0, v0, :cond_40

    .line 47
    const-string v0, "SYS_EBUSY"

    return-object v0

    .line 49
    :cond_40
    const/16 v0, -0x16

    if-ne p0, v0, :cond_47

    .line 50
    const-string v0, "SYS_EINVAL"

    return-object v0

    .line 52
    :cond_47
    const/16 v0, -0x1c

    if-ne p0, v0, :cond_4e

    .line 53
    const-string v0, "SYS_ENOSPC"

    return-object v0

    .line 55
    :cond_4e
    const/16 v0, -0x6e

    if-ne p0, v0, :cond_55

    .line 56
    const-string v0, "SYS_ETIMEDOUT"

    return-object v0

    .line 58
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
