.class Lcom/android/server/RescueParty$AppThreshold;
.super Lcom/android/server/RescueParty$Threshold;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppThreshold"
.end annotation


# instance fields
.field private count:I

.field private start:J


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 364
    const/4 v0, 0x5

    const-wide/16 v1, 0x7530

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/RescueParty$Threshold;-><init>(IIJ)V

    .line 365
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 367
    iget v0, p0, Lcom/android/server/RescueParty$AppThreshold;->count:I

    return v0
.end method

.method public getStart()J
    .registers 3

    .line 369
    iget-wide v0, p0, Lcom/android/server/RescueParty$AppThreshold;->start:J

    return-wide v0
.end method

.method public setCount(I)V
    .registers 2

    .line 368
    iput p1, p0, Lcom/android/server/RescueParty$AppThreshold;->count:I

    return-void
.end method

.method public setStart(J)V
    .registers 3

    .line 370
    iput-wide p1, p0, Lcom/android/server/RescueParty$AppThreshold;->start:J

    return-void
.end method
