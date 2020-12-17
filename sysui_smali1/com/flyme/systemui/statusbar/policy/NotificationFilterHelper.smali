.class public Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$H;
    }
.end annotation


# static fields
.field private static FILTER_ACTION_NAME:Ljava/lang/String; = "com.meizu.notification.FILTER"

.field private static SYSTEM_UI_TOOLS:Ljava/lang/String; = "com.flyme.systemuitools"

.field private static TAG:Ljava/lang/String; = "NotificationFilterHelper"

.field private static remoteService:Lmeizu/notification/INotificationFilterService;


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->initialize()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lmeizu/notification/INotificationFilterService;
    .registers 1

    .line 25
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object v0
.end method

.method static synthetic access$202(Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;
    .registers 1

    .line 25
    sput-object p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->startService()V

    return-void
.end method

.method private initialize()V
    .registers 4

    .line 45
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$H;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$H;-><init>(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$1;-><init>(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mConn:Landroid/content/ServiceConnection;

    .line 62
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->startService()V

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.flyme.systemuitools.endwelcome"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$2;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper$2;-><init>(Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startService()V
    .registers 4

    .line 80
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService: try startService，debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->FILTER_ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    goto :goto_54

    :catchall_31
    move-exception p0

    .line 85
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService: bindService err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->TAG:Ljava/lang/String;

    const-string v1, "bindService err"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    return-void
.end method


# virtual methods
.method public updateUserFilter(Ljava/lang/String;I)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 98
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
