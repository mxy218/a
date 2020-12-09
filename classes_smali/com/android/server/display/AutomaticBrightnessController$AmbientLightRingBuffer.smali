.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method public constructor <init>(JI)V
    .registers 6

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 992
    int-to-float p3, p3

    const/high16 v0, 0x3fc00000  # 1.5f

    mul-float/2addr p3, v0

    long-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 993
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 994
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 995
    return-void

    .line 990
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lightSensorRate must be above 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private offsetOf(I)I
    .registers 3

    .line 1093
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 1096
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 1097
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_e

    .line 1098
    sub-int/2addr p1, v0

    .line 1100
    :cond_e
    return p1

    .line 1094
    :cond_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1069
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1070
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1071
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1072
    return-void
.end method

.method public getLux(I)F
    .registers 3

    .line 998
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getTime(I)J
    .registers 4

    .line 1002
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result p1

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public prune(J)V
    .registers 7

    .line 1036
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_5

    .line 1037
    return-void

    .line 1040
    :cond_5
    :goto_5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    .line 1041
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr v0, v1

    .line 1042
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v0, v2, :cond_12

    .line 1043
    sub-int/2addr v0, v2

    .line 1045
    :cond_12
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_1b

    .line 1053
    goto :goto_23

    .line 1055
    :cond_1b
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1056
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1057
    goto :goto_5

    .line 1059
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aget-wide v2, v0, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_2f

    .line 1060
    aput-wide p1, v0, v1

    .line 1062
    :cond_2f
    return-void
.end method

.method public push(JF)V
    .registers 11

    .line 1006
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1007
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_39

    .line 1008
    mul-int/lit8 v0, v2, 0x2

    .line 1010
    new-array v1, v0, [F

    .line 1011
    new-array v4, v0, [J

    .line 1012
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v2, v5

    .line 1013
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v6, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v5, :cond_2e

    .line 1016
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v6, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1017
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    :cond_2e
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1020
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1022
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1023
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1024
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    move v0, v1

    .line 1026
    :cond_39
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v1, v0

    .line 1027
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, p1, v0

    .line 1028
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1029
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne p1, p2, :cond_4d

    .line 1030
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1032
    :cond_4d
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1033
    return-void
.end method

.method public size()I
    .registers 2

    .line 1065
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1076
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1077
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1078
    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge v1, v2, :cond_3f

    .line 1079
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_18

    invoke-virtual {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    goto :goto_1c

    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1080
    :goto_1c
    if-eqz v1, :cond_23

    .line 1081
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1083
    :cond_23
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1084
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1085
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1086
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    move v1, v3

    goto :goto_b

    .line 1088
    :cond_3f
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1089
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
