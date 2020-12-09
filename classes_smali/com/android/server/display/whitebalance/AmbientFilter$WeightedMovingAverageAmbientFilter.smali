.class Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;
.super Lcom/android/server/display/whitebalance/AmbientFilter;
.source "AmbientFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeightedMovingAverageAmbientFilter"
.end annotation


# static fields
.field private static final PREDICTION_TIME:I = 0x64


# instance fields
.field private final mIntercept:F


# direct methods
.method constructor <init>(Ljava/lang/String;IF)V
    .registers 4

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;-><init>(Ljava/lang/String;I)V

    .line 183
    invoke-direct {p0, p3}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->validateArguments(F)V

    .line 184
    iput p3, p0, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    .line 185
    return-void
.end method

.method private antiderivative(F)F
    .registers 4

    .line 252
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateIntegral(FF)F
    .registers 3

    .line 247
    invoke-direct {p0, p2}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->antiderivative(F)F

    move-result p2

    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->antiderivative(F)F

    move-result p1

    sub-float/2addr p2, p1

    return p2
.end method

.method private getWeights(JLcom/android/server/display/utils/RollingBuffer;)[F
    .registers 14

    .line 231
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v1

    .line 233
    nop

    .line 234
    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    :goto_10
    array-length v6, v0

    const/high16 v7, 0x447a0000  # 1000.0f

    if-ge v4, v6, :cond_29

    .line 235
    invoke-virtual {p3, v4}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v8

    sub-long/2addr v8, v1

    long-to-float v6, v8

    div-float/2addr v6, v7

    .line 236
    invoke-direct {p0, v5, v6}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->calculateIntegral(FF)F

    move-result v5

    .line 237
    add-int/lit8 v7, v4, -0x1

    aput v5, v0, v7

    .line 238
    nop

    .line 234
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_10

    .line 240
    :cond_29
    const-wide/16 v8, 0x64

    add-long/2addr p1, v8

    sub-long/2addr p1, v1

    long-to-float p1, p1

    div-float/2addr p1, v7

    .line 241
    invoke-direct {p0, v5, p1}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->calculateIntegral(FF)F

    move-result p1

    .line 242
    array-length p2, v0

    sub-int/2addr p2, v3

    aput p1, v0, p2

    .line 243
    return-object v0
.end method

.method private validateArguments(F)V
    .registers 3

    .line 225
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_c

    .line 228
    return-void

    .line 226
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "intercept must be a non-negative number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 192
    invoke-super {p0, p1}, Lcom/android/server/display/whitebalance/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method protected filter(JLcom/android/server/display/utils/RollingBuffer;)F
    .registers 9

    .line 203
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    const/high16 p1, -0x40800000  # -1.0f

    return p1

    .line 206
    :cond_9
    nop

    .line 207
    nop

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;->getWeights(JLcom/android/server/display/utils/RollingBuffer;)[F

    move-result-object p1

    .line 212
    const/4 p2, 0x0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_13
    array-length v3, p1

    if-ge p2, v3, :cond_22

    .line 213
    invoke-virtual {p3, p2}, Lcom/android/server/display/utils/RollingBuffer;->getValue(I)F

    move-result v3

    .line 214
    aget v4, p1, p2

    .line 215
    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 216
    add-float/2addr v1, v4

    .line 212
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .line 218
    :cond_22
    cmpl-float p1, v1, v0

    if-nez p1, :cond_31

    .line 219
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p3, p1}, Lcom/android/server/display/utils/RollingBuffer;->getValue(I)F

    move-result p1

    return p1

    .line 221
    :cond_31
    div-float/2addr v2, v1

    return v2
.end method
