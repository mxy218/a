.class public final Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final CAPTURE_BAD_FINGER:I = 0x6

.field public static final CAPTURE_FINGER_ACQUIRED:I = 0x4

.field public static final CAPTURE_FINGER_DETECTED:I = 0x2

.field public static final CAPTURE_FINGER_REMOVED:I = 0x5

.field public static final CAPTURE_FINGER_SETTLED:I = 0x3

.field public static final CAPTURE_SENSOR_ARMED:I = 0x1

.field public static final EVENT_UNKNOWN:I = 0x64


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

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 40
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 41
    const-string v2, "CAPTURE_SENSOR_ARMED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v1, v1, 0x1

    .line 44
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 45
    const-string v2, "CAPTURE_FINGER_DETECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v1, v1, 0x2

    .line 48
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 49
    const-string v2, "CAPTURE_FINGER_SETTLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v1, v1, 0x3

    .line 52
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 53
    const-string v2, "CAPTURE_FINGER_ACQUIRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v1, v1, 0x4

    .line 56
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 57
    const-string v2, "CAPTURE_FINGER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v1, v1, 0x5

    .line 60
    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 61
    const-string v2, "CAPTURE_BAD_FINGER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v1, v1, 0x6

    .line 64
    :cond_4e
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5b

    .line 65
    const-string v2, "EVENT_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x64

    .line 68
    :cond_5b
    if-eq p0, v1, :cond_77

    .line 69
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

    .line 71
    :cond_77
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"  # I

    .line 13
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 14
    const-string v0, "CAPTURE_SENSOR_ARMED"

    return-object v0

    .line 16
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 17
    const-string v0, "CAPTURE_FINGER_DETECTED"

    return-object v0

    .line 19
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 20
    const-string v0, "CAPTURE_FINGER_SETTLED"

    return-object v0

    .line 22
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 23
    const-string v0, "CAPTURE_FINGER_ACQUIRED"

    return-object v0

    .line 25
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 26
    const-string v0, "CAPTURE_FINGER_REMOVED"

    return-object v0

    .line 28
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 29
    const-string v0, "CAPTURE_BAD_FINGER"

    return-object v0

    .line 31
    :cond_24
    const/16 v0, 0x64

    if-ne p0, v0, :cond_2b

    .line 32
    const-string v0, "EVENT_UNKNOWN"

    return-object v0

    .line 34
    :cond_2b
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
