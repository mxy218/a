.class Lcom/android/server/usage/UsageStatsService$1;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 9

    .line 164
    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0xb

    invoke-direct {p3, v2, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 166
    shl-int/lit8 p4, p4, 0x10

    const v0, 0xffff

    and-int/2addr p5, v0

    or-int/2addr p4, p5

    iput p4, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 167
    iput-object p1, p3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 168
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 2

    .line 174
    return-void
.end method
