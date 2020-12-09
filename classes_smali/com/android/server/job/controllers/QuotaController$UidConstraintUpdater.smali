.class Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidConstraintUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;

.field public wasJobChanged:Z


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 3

    .line 1307
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .registers 3

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 1313
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$700(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1314
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 1315
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result p1

    .line 1317
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1318
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->access$800(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1319
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1320
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1322
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1324
    :cond_45
    goto :goto_4f

    .line 1325
    :cond_46
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1327
    :goto_4f
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 1307
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method postProcess()V
    .registers 8

    .line 1330
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 1331
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v2

    .line 1332
    move v3, v0

    :goto_11
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 1333
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 1334
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1335
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 1332
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1330
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1338
    :cond_36
    return-void
.end method

.method reset()V
    .registers 2

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1342
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->clear()V

    .line 1343
    return-void
.end method
