.class public Lcom/android/systemui/classifier/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# instance fields
.field private final NANOS_TO_SECONDS:F

.field private final mDpi:F

.field private mEndTimeNano:J

.field private mLength:F

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeNano:J


# direct methods
.method public constructor <init>(JF)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4e6e6b28  # 1.0E9f

    .line 26
    iput v0, p0, Lcom/android/systemui/classifier/Stroke;->NANOS_TO_SECONDS:F

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    .line 35
    iput p3, p0, Lcom/android/systemui/classifier/Stroke;->mDpi:F

    .line 36
    iput-wide p1, p0, Lcom/android/systemui/classifier/Stroke;->mEndTimeNano:J

    iput-wide p1, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    return-void
.end method


# virtual methods
.method public addPoint(FFJ)V
    .registers 8

    .line 40
    iput-wide p3, p0, Lcom/android/systemui/classifier/Stroke;->mEndTimeNano:J

    .line 41
    new-instance v0, Lcom/android/systemui/classifier/Point;

    iget v1, p0, Lcom/android/systemui/classifier/Stroke;->mDpi:F

    div-float/2addr p1, v1

    div-float/2addr p2, v1

    iget-wide v1, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    sub-long/2addr p3, v1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/classifier/Point;-><init>(FFJ)V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 43
    iget p1, p0, Lcom/android/systemui/classifier/Stroke;->mLength:F

    iget-object p2, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p2, v0}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/classifier/Stroke;->mLength:F

    .line 45
    :cond_2d
    iget-object p0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getDurationNanos()J
    .registers 5

    .line 61
    iget-wide v0, p0, Lcom/android/systemui/classifier/Stroke;->mEndTimeNano:J

    iget-wide v2, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationSeconds()F
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/classifier/Stroke;->getDurationNanos()J

    move-result-wide v0

    long-to-float p0, v0

    const v0, 0x4e6e6b28  # 1.0E9f

    div-float/2addr p0, v0

    return p0
.end method

.method public getEndPointLength()F
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    iget-object p0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v0, p0}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result p0

    return p0
.end method

.method public getLastEventTimeNano()J
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    iget-wide v0, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    return-wide v0

    .line 77
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/Point;

    iget-wide v0, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-wide v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTotalLength()F
    .registers 1

    .line 53
    iget p0, p0, Lcom/android/systemui/classifier/Stroke;->mLength:F

    return p0
.end method
