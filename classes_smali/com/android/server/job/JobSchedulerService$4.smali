.class Lcom/android/server/job/JobSchedulerService$4;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .registers 7

    .line 3230
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 3231
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 3232
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    .line 3233
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p2

    .line 3234
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_18

    .line 3235
    if-ge v0, v1, :cond_17

    move v2, v3

    :cond_17
    return v2

    .line 3237
    :cond_18
    if-ge p1, p2, :cond_1c

    move v2, v3

    goto :goto_20

    :cond_1c
    if-le p1, p2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3227
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$4;->compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    return p1
.end method
