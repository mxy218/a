.class public Lcom/android/server/display/utils/RollingBuffer;
.super Ljava/lang/Object;
.source "RollingBuffer.java"


# static fields
.field private static final INITIAL_SIZE:I = 0x32


# instance fields
.field private mCount:I

.field private mEnd:I

.field private mSize:I

.field private mStart:I

.field private mTimes:[J

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 36
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 37
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 38
    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->clear()V

    .line 39
    return-void
.end method

.method private expandBuffer()V
    .registers 8

    .line 161
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 162
    new-array v1, v0, [J

    .line 163
    new-array v2, v0, [F

    .line 164
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 169
    iput v6, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 170
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 171
    iput-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 172
    iput-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 173
    return-void
.end method

.method private getLatestIndexBefore(J)I
    .registers 7

    .line 176
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_17

    .line 177
    iget-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-direct {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v3

    aget-wide v2, v2, v3

    cmp-long v2, v2, p1

    if-lez v2, :cond_14

    .line 178
    sub-int/2addr v1, v0

    return v1

    .line 176
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    :cond_17
    sub-int/2addr v2, v0

    return v2
.end method

.method private offsetOf(I)I
    .registers 5

    .line 153
    if-ltz p1, :cond_d

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge p1, v0, :cond_d

    .line 157
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v0, p1

    return v0

    .line 154
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCount= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(JF)V
    .registers 6

    .line 50
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    if-lt v0, v1, :cond_9

    .line 51
    invoke-direct {p0}, Lcom/android/server/display/utils/RollingBuffer;->expandBuffer()V

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    aput-wide p1, v0, v1

    .line 54
    iget-object p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aput p3, p1, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 56
    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 57
    return-void
.end method

.method public clear()V
    .registers 2

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 129
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 130
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 131
    return-void
.end method

.method public getTime(I)J
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result p1

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getValue(I)F
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public size()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_3e

    .line 142
    invoke-direct {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-eq v1, v2, :cond_3d

    .line 145
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_3d
    goto :goto_b

    .line 148
    :cond_3e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)V
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_10

    goto :goto_26

    .line 111
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/utils/RollingBuffer;->getLatestIndexBefore(J)I

    move-result v0

    .line 112
    invoke-direct {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 113
    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 121
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    aput-wide p1, v0, v1

    .line 122
    return-void

    .line 109
    :cond_26
    :goto_26
    return-void
.end method
