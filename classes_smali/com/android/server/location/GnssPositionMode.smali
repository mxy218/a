.class public Lcom/android/server/location/GnssPositionMode;
.super Ljava/lang/Object;
.source "GnssPositionMode.java"


# instance fields
.field private final lowPowerMode:Z

.field private final minInterval:I

.field private final mode:I

.field private final preferredAccuracy:I

.field private final preferredTime:I

.field private final recurrence:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .registers 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/server/location/GnssPositionMode;->mode:I

    .line 19
    iput p2, p0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    .line 20
    iput p3, p0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    .line 21
    iput p4, p0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    .line 22
    iput p5, p0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    .line 23
    iput-boolean p6, p0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 28
    instance-of v0, p1, Lcom/android/server/location/GnssPositionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 29
    check-cast p1, Lcom/android/server/location/GnssPositionMode;

    .line 30
    iget v0, p0, Lcom/android/server/location/GnssPositionMode;->mode:I

    iget v2, p1, Lcom/android/server/location/GnssPositionMode;->mode:I

    if-ne v0, v2, :cond_37

    iget v0, p0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    iget v2, p1, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    if-ne v0, v2, :cond_37

    iget v0, p0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    iget v2, p1, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    if-ne v0, v2, :cond_37

    iget v0, p0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    iget v2, p1, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    if-ne v0, v2, :cond_37

    iget v0, p0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    iget v2, p1, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    if-ne v0, v2, :cond_37

    iget-boolean v0, p0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    iget-boolean v2, p1, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    if-ne v0, v2, :cond_37

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    .line 30
    :goto_38
    return v1

    .line 37
    :cond_39
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->mode:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
