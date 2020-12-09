.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    }
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_APPLY_CONFIG:I = 0x4

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .registers 3

    .line 1469
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1470
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1471
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 4

    .line 1447
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper$H;)V
    .registers 1

    .line 1447
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 5

    .line 1447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$H;->postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeHelper$H;)V
    .registers 1

    .line 1447
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method private postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 12

    .line 1485
    new-instance v6, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v6}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    .line 1487
    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .registers 2

    .line 1474
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 1475
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    .line 1476
    return-void
.end method

.method private postMetricsTimer()V
    .registers 4

    .line 1479
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 1480
    const-wide/32 v1, 0x1499700

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1491
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    goto :goto_2e

    .line 1499
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    .line 1500
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    iget-object v2, p1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->triggeringComponent:Landroid/content/ComponentName;

    iget-boolean p1, p1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/notification/ZenModeHelper;->access$1300(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    goto :goto_2e

    .line 1496
    :cond_1e
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->access$1100(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;->access$1200(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    .line 1497
    goto :goto_2e

    .line 1493
    :cond_28
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)V

    .line 1494
    nop

    .line 1503
    :goto_2e
    return-void
.end method
