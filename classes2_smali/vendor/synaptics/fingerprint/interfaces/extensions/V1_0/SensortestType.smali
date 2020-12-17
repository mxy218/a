.class public final Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestType;
.super Ljava/lang/Object;
.source "SensortestType.java"


# static fields
.field public static final CAL_COLL_REF_HIGH:I = 0xa

.field public static final CAL_COLL_REF_LOW:I = 0xb

.field public static final CAL_COLL_SCRIPT_ID:I = 0x9

.field public static final CAL_FW_UPDATE:I = 0x7

.field public static final CAL_METHOD_SCRIPT_ID:I = 0xc

.field public static final CAL_WRITE_CONFIG:I = 0x8

.field public static final CAPTURE_ICON:I = 0x6

.field public static final INVALIDATION_TEST:I = 0x3

.field public static final NO_STIMULOUS_FOR_RA_TEST:I = 0x4

.field public static final NO_STIMULOUS_TEST:I = 0x1

.field public static final STIMULOUS_FOR_RA_TEST:I = 0x5

.field public static final STIMULOUS_TEST:I = 0x2

.field public static final UNKNOWN_TEST:I


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
    const-string v2, "UNKNOWN_TEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 66
    const-string v2, "NO_STIMULOUS_TEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x1

    .line 69
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 70
    const-string v2, "STIMULOUS_TEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x2

    .line 73
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 74
    const-string v2, "INVALIDATION_TEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x3

    .line 77
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 78
    const-string v2, "NO_STIMULOUS_FOR_RA_TEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x4

    .line 81
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 82
    const-string v2, "STIMULOUS_FOR_RA_TEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x5

    .line 85
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 86
    const-string v2, "CAPTURE_ICON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x6

    .line 89
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 90
    const-string v2, "CAL_FW_UPDATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x7

    .line 93
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 94
    const-string v2, "CAL_WRITE_CONFIG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x8

    .line 97
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 98
    const-string v2, "CAL_COLL_SCRIPT_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x9

    .line 101
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 102
    const-string v2, "CAL_COLL_REF_HIGH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0xa

    .line 105
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 106
    const-string v2, "CAL_COLL_REF_LOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0xb

    .line 109
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 110
    const-string v2, "CAL_METHOD_SCRIPT_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0xc

    .line 113
    :cond_a0
    if-eq p0, v1, :cond_bc

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
    :cond_bc
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"  # I

    .line 19
    if-nez p0, :cond_5

    .line 20
    const-string v0, "UNKNOWN_TEST"

    return-object v0

    .line 22
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 23
    const-string v0, "NO_STIMULOUS_TEST"

    return-object v0

    .line 25
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 26
    const-string v0, "STIMULOUS_TEST"

    return-object v0

    .line 28
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 29
    const-string v0, "INVALIDATION_TEST"

    return-object v0

    .line 31
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 32
    const-string v0, "NO_STIMULOUS_FOR_RA_TEST"

    return-object v0

    .line 34
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 35
    const-string v0, "STIMULOUS_FOR_RA_TEST"

    return-object v0

    .line 37
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 38
    const-string v0, "CAPTURE_ICON"

    return-object v0

    .line 40
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 41
    const-string v0, "CAL_FW_UPDATE"

    return-object v0

    .line 43
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 44
    const-string v0, "CAL_WRITE_CONFIG"

    return-object v0

    .line 46
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 47
    const-string v0, "CAL_COLL_SCRIPT_ID"

    return-object v0

    .line 49
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 50
    const-string v0, "CAL_COLL_REF_HIGH"

    return-object v0

    .line 52
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 53
    const-string v0, "CAL_COLL_REF_LOW"

    return-object v0

    .line 55
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 56
    const-string v0, "CAL_METHOD_SCRIPT_ID"

    return-object v0

    .line 58
    :cond_52
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
