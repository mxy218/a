.class public Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;
.super Ljava/lang/Object;
.source "FlymeSingleTonFlymeVoiceSupportManager.java"

# interfaces
.implements Lcom/meizu/settings/search/FlymeVoiceSupportManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;,
        Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeSingleTonFlymeVoiceSupportManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHintText:Ljava/lang/String;

.field private mLastBindTime:J

.field private mService:Landroid/os/IBinder;

.field private mServiceConn:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

.field private mTargetPackageName:Ljava/lang/String;

.field mVoiceAssistantCallback:Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;

.field private mVoiceListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V

    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mServiceConn:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceListners:Ljava/util/Set;

    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mLastBindTime:J

    .line 180
    new-instance v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V

    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceAssistantCallback:Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Lcom/meizu/voiceassistant/support/IVoiceAssistantService;)Lcom/meizu/voiceassistant/support/IVoiceAssistantService;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mTargetPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->onServiceConnected()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/Runnable;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->doInUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)Ljava/util/Set;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceListners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$802(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$902(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mHintText:Ljava/lang/String;

    return-object p1
.end method

.method private bindService()V
    .registers 4

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mLastBindTime:J

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.voiceassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mServiceConn:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private checkBind()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    sget-object v2, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " last= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mLastBindTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " current - mLastBindTime= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mLastBindTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-wide v2, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mLastBindTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_46

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3e

    goto :goto_46

    .line 93
    :cond_3e
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "interval time too short"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_46
    :goto_46
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    if-nez p0, :cond_4b

    return-void

    .line 97
    :cond_4b
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "service has connected"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doInUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 118
    new-instance v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onServiceConnected()V
    .registers 2

    .line 123
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->setServiceParams()V

    .line 125
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceListners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;

    .line 126
    invoke-interface {v0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;->onServiceConnected()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method private onServiceDisconnected()V
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceListners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;

    .line 144
    invoke-interface {v0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;->onServiceDisconnected()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private setServiceParams()V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    if-eqz v0, :cond_21

    .line 133
    :try_start_4
    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mTargetPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->setFocuses(Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mTargetPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceAssistantCallback:Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;

    invoke-interface {v0, v1, v2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->registerCallback(Ljava/lang/String;Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;)V

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mHintText:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mTargetPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->setHintText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public bindVoiceService()V
    .registers 2

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->checkBind()V

    .line 67
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->bindService()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_14

    :catch_7
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    sget-object v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public hideVoiceWindow()V
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    if-nez v0, :cond_5

    return-void

    .line 303
    :cond_5
    :try_start_5
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mService:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->hidePopWindow(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    .line 305
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public registerVoiceListener(Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceListners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 48
    :cond_8
    new-instance p0, Lcom/meizu/settings/search/FlymeVoiceException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/FlymeVoiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showVoiceWindow()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    if-nez v0, :cond_5

    return-void

    .line 290
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mTargetPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mService:Landroid/os/IBinder;

    invoke-interface {v0, v1, p0}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->displayPopWindow(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 292
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public unBindVoiceService()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    if-eqz v0, :cond_21

    .line 104
    :try_start_4
    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mTargetPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->unregisterCallback(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mService:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->hidePopWindow(Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 110
    :goto_15
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mServiceConn:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceService:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    .line 113
    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mService:Landroid/os/IBinder;

    :cond_21
    return-void
.end method

.method public unregisterVoiceListener(Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 60
    iget-object p0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->mVoiceListners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 57
    :cond_8
    new-instance p0, Lcom/meizu/settings/search/FlymeVoiceException;

    const-string p1, "listener must not be null"

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/FlymeVoiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
