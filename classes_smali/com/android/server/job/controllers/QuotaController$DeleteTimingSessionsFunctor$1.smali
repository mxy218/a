.class Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor$1;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;)V
    .registers 2

    .line 1834
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor$1;->this$1:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/job/controllers/QuotaController$TimingSession;)Z
    .registers 8

    .line 1836
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 1834
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor$1;->test(Lcom/android/server/job/controllers/QuotaController$TimingSession;)Z

    move-result p1

    return p1
.end method
