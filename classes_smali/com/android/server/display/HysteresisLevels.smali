.class public Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BRIGHTENING_HYSTERESIS:F = 0.1f

.field private static final DEFAULT_DARKENING_HYSTERESIS:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field private final mBrighteningThresholds:[F

.field private final mDarkeningThresholds:[F

.field private final mThresholdLevels:[F


# direct methods
.method constructor <init>([I[I[I)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_24

    array-length v0, p2

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_24

    .line 58
    const/high16 v0, 0x447a0000  # 1000.0f

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HysteresisLevels;->mBrighteningThresholds:[F

    .line 59
    invoke-direct {p0, p2, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HysteresisLevels;->mDarkeningThresholds:[F

    .line 60
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p3, p1}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HysteresisLevels;->mThresholdLevels:[F

    .line 61
    return-void

    .line 56
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mismatch between hysteresis array lengths."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getReferenceLevel(F[F)F
    .registers 6

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mThresholdLevels:[F

    array-length v2, v1

    if-le v2, v0, :cond_f

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_f

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_f
    aget p1, p2, v0

    return p1
.end method

.method private setArrayFormat([IF)[F
    .registers 6

    .line 104
    array-length v0, p1

    new-array v0, v0, [F

    .line 105
    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-le v2, v1, :cond_10

    .line 106
    aget v2, p1, v1

    int-to-float v2, v2

    div-float/2addr v2, p2

    aput v2, v0, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 108
    :cond_10
    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 112
    const-string v0, "HysteresisLevels"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mBrighteningThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mDarkeningThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThresholdLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mThresholdLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public getBrighteningThreshold(F)F
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mBrighteningThresholds:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 68
    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 73
    return p1
.end method

.method public getDarkeningThreshold(F)F
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mDarkeningThresholds:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 81
    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    .line 86
    return p1
.end method
