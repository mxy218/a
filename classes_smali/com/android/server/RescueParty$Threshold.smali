.class abstract Lcom/android/server/RescueParty$Threshold;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Threshold"
.end annotation


# instance fields
.field private final triggerCount:I

.field private final triggerWindow:J

.field private final uid:I


# direct methods
.method public constructor <init>(IIJ)V
    .registers 5

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    .line 289
    iput p2, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    .line 290
    iput-wide p3, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RescueParty$Threshold;)I
    .registers 1

    .line 277
    iget p0, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    return p0
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getStart()J
.end method

.method public incrementAndTest()Z
    .registers 10

    .line 302
    invoke-static {}, Lcom/android/server/RescueParty;->getElapsedRealtime()J

    move-result-wide v0

    .line 303
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 304
    iget-wide v4, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_19

    .line 305
    invoke-virtual {p0, v6}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 307
    return v5

    .line 309
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getCount()I

    move-result v0

    add-int/2addr v0, v6

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 311
    iget v1, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Noticed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " events for UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in last "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RescueParty"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v1, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    if-lt v0, v1, :cond_5b

    move v5, v6

    :cond_5b
    return v5
.end method

.method public reset()V
    .registers 3

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 295
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 296
    return-void
.end method

.method public abstract setCount(I)V
.end method

.method public abstract setStart(J)V
.end method
