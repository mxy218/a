.class public Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;
.super Ljava/lang/Object;
.source "NightModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/NightModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "NightModeController"


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConn:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInNightMode:Z

.field private mIsSwitching:Z

.field private mNightModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mNightService:Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

.field private mNightServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    .line 30
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightService:Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    .line 53
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-string v4, "flymelab_flyme_night_mode"

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 62
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 64
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result p1

    if-eqz p1, :cond_38

    move v0, v2

    :cond_38
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    .line 66
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightServiceIntent:Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightServiceIntent:Landroid/content/Intent;

    const-string v0, "com.meizu.flyme.sdkstage.nightmode.action.NIGHT_MODE_SETTING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightServiceIntent:Landroid/content/Intent;

    const-string v0, "com.meizu.flyme.sdkstage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;

    invoke-direct {p1, p0, v1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;-><init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$1;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mConn:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;

    .line 71
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInNightMode init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mIsSwitching:Z

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->sendNightModeBroadcast(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;)Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightService:Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->applyMode(Z)V

    return-void
.end method

.method private applyMode(Z)V
    .registers 2

    .line 190
    :try_start_0
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightService:Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    invoke-interface {p0, p1}, Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;->setNightModeStateWithAnimation(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;

    .line 77
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V
    .registers 2

    .line 82
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;->onNightModeChanged(Z)V

    return-void
.end method

.method private sendNightModeBroadcast(Z)V
    .registers 4

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flymelab.nightmode.action.flymelab.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "flymelab_flyme_night_mode"

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 25
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V

    return-void
.end method

.method public isInNightMode()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    return p0
.end method

.method public isNightModeSupport()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSwitching()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mIsSwitching:Z

    return p0
.end method

.method public notifyNightModeConfig(Z)V
    .registers 3

    .line 150
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 151
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 152
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-eqz p1, :cond_18

    const/16 p1, 0x20

    goto :goto_1a

    :cond_18
    const/16 p1, 0x10

    :goto_1a
    if-eq v0, p1, :cond_3b

    .line 157
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 158
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, -0x31

    or-int/2addr p0, p1

    iput p0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 159
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_3b

    :catch_30
    move-exception p0

    .line 162
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "[foree] notifyNightModeConfig: Unable to get activityManger"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public notifyPanelCollapse()V
    .registers 5

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mIsSwitching:Z

    .line 125
    :try_start_3
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightService:Lcom/meizu/flyme/sdkstage/nightmode/INightModeService;

    if-nez v0, :cond_12

    .line 126
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mNightServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mConn:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$NightModeServiceConn;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2a

    .line 128
    :cond_12
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mInNightMode:Z

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->applyMode(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    goto :goto_2a

    :catch_18
    move-exception v0

    .line 131
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyPanelCollapse: bind error, updateConfiguration self "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2a
    return-void
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 25
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V

    return-void
.end method

.method public setInNightMode(Z)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
