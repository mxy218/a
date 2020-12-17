.class public Lcom/meizu/settings/scheduledpower/ShutdownService;
.super Landroid/app/Service;
.source "ShutdownService.java"


# instance fields
.field private calling:Z

.field private count:I

.field private dialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/telephony/PhoneStateListener;

.field private mPm:Landroid/os/PowerManager;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->count:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->calling:Z

    .line 100
    new-instance v0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/scheduledpower/ShutdownService$1;-><init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    .line 178
    new-instance v0, Lcom/meizu/settings/scheduledpower/ShutdownService$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/scheduledpower/ShutdownService$4;-><init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/PhoneStateListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/scheduledpower/ShutdownService;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->calling:Z

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/scheduledpower/ShutdownService;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->calling:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mTm:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/os/Handler;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/app/AlertDialog;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/scheduledpower/ShutdownService;)I
    .registers 1

    .line 23
    iget p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->count:I

    return p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/scheduledpower/ShutdownService;I)I
    .registers 2

    .line 23
    iput p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->count:I

    return p1
.end method

.method static synthetic access$510(Lcom/meizu/settings/scheduledpower/ShutdownService;)I
    .registers 3

    .line 23
    iget v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->count:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/settings/scheduledpower/ShutdownService;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->createDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/scheduledpower/ShutdownService;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->updateText(I)V

    return-void
.end method

.method private createDialog(I)V
    .registers 6

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0xa0801e9

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f12122b

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121225

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/meizu/settings/scheduledpower/ShutdownService$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/scheduledpower/ShutdownService$2;-><init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121224

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/meizu/settings/scheduledpower/ShutdownService$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/scheduledpower/ShutdownService$3;-><init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    .line 159
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7de

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 161
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 162
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateText(I)V
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    if-lez p1, :cond_2e

    .line 168
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12122b

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 168
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3a

    .line 172
    :cond_2e
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3a
    :goto_3a
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "settings_shutdown"

    const-string v2, "settings"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 44
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 48
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 49
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, -0x3e7

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "power"

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mPm:Landroid/os/PowerManager;

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mPm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "shutdown"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "phone"

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mTm:Landroid/telephony/TelephonyManager;

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/meizu/settings/scheduledpower/ShutdownService;->createDialog(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 80
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "ShutDownService"

    const-string v2, "onDestroy"

    .line 84
    invoke-static {v0, v2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 86
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    iput-object v3, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    .line 89
    :cond_28
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 90
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    :cond_37
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_62

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestrory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mListener = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 96
    iput-object v3, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mListener:Landroid/telephony/PhoneStateListener;

    :cond_62
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 p2, 0x2

    if-nez p1, :cond_4

    return p2

    .line 64
    :cond_4
    iget-object p3, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object p3, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    const p3, 0xea60

    const-string v2, "targetTime"

    .line 66
    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " targetTime:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ShutDownService"

    invoke-static {v2, p3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->count:I

    .line 69
    iget-object p3, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->dialog:Landroid/app/AlertDialog;

    if-eqz p3, :cond_53

    .line 70
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12122b

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 70
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    :cond_53
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return p2
.end method
