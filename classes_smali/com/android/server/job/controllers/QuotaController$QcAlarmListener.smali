.class Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcAlarmListener"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private volatile mTriggerTimeElapsed:J

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 4

    .line 1970
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mUserId:I

    .line 1972
    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mPackageName:Ljava/lang/String;

    .line 1973
    return-void
.end method


# virtual methods
.method getTriggerTimeElapsed()J
    .registers 3

    .line 1984
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mTriggerTimeElapsed:J

    return-wide v0
.end method

.method isWaiting()Z
    .registers 5

    .line 1976
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mTriggerTimeElapsed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onAlarm()V
    .registers 6

    .line 1989
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mUserId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1990
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mTriggerTimeElapsed:J

    .line 1991
    return-void
.end method

.method setTriggerTime(J)V
    .registers 3

    .line 1980
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->mTriggerTimeElapsed:J

    .line 1981
    return-void
.end method
