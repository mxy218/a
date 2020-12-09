.class final Lcom/android/server/display/DisplayModeDirector$Vote;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Vote"
.end annotation


# static fields
.field public static final INVALID_SIZE:I = -0x1

.field public static final MAX_PRIORITY:I = 0x5

.field public static final MIN_PRIORITY:I = 0x0

.field public static final PRIORITY_APP_REQUEST_REFRESH_RATE:I = 0x2

.field public static final PRIORITY_APP_REQUEST_SIZE:I = 0x3

.field public static final PRIORITY_LOW_BRIGHTNESS:I = 0x0

.field public static final PRIORITY_LOW_POWER_MODE:I = 0x5

.field public static final PRIORITY_USER_SETTING_MIN_REFRESH_RATE:I = 0x1

.field public static final PRIORITY_USER_SETTING_PEAK_REFRESH_RATE:I = 0x4


# instance fields
.field public final height:I

.field public final maxRefreshRate:F

.field public final minRefreshRate:F

.field public final width:I


# direct methods
.method private constructor <init>(IIFF)V
    .registers 5

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 522
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    .line 523
    iput p3, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->minRefreshRate:F

    .line 524
    iput p4, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->maxRefreshRate:F

    .line 525
    return-void
.end method

.method public static forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 4

    .line 512
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 5

    .line 516
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .registers 2

    .line 528
    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 542
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 540
    :cond_16
    const-string p0, "PRIORITY_LOW_POWER_MODE"

    return-object p0

    .line 538
    :cond_19
    const-string p0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object p0

    .line 536
    :cond_1c
    const-string p0, "PRIORITY_APP_REQUEST_SIZE"

    return-object p0

    .line 534
    :cond_1f
    const-string p0, "PRIORITY_APP_REQUEST_REFRESH_RATE"

    return-object p0

    .line 532
    :cond_22
    const-string p0, "PRIORITY_USER_SETTING_MIN_REFRESH_RATE"

    return-object p0

    .line 530
    :cond_25
    const-string p0, "PRIORITY_LOW_BRIGHTNESS"

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->minRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->maxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
