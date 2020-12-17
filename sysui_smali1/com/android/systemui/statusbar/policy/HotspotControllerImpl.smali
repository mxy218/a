.class public Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController;
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/HotspotController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHotspotState:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mNumConnectedDevices:I

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

.field private mWaitingForTerminalState:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "HotspotController"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "wifi"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 71
    new-instance p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->maybeResetSoftApState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private fireHotspotChangedCallback()V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(ZI)V

    goto :goto_9

    .line 205
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private maybeResetSoftApState()V
    .registers 4

    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    if-nez v0, :cond_5

    return-void

    .line 227
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_15

    goto :goto_1c

    .line 230
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 234
    :cond_1a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    :goto_1c
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_14

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0xe
    const-string p0, "FAILED"

    return-object p0

    :pswitch_8  #0xd
    const-string p0, "ENABLED"

    return-object p0

    :pswitch_b  #0xc
    const-string p0, "ENABLING"

    return-object p0

    :pswitch_e  #0xb
    const-string p0, "DISABLED"

    return-object p0

    :pswitch_11  #0xa
    const-string p0, "DISABLING"

    return-object p0

    :pswitch_data_14
    .packed-switch 0xa
        :pswitch_11  #0000000a
        :pswitch_e  #0000000b
        :pswitch_b  #0000000c
        :pswitch_8  #0000000d
        :pswitch_5  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_5d

    .line 122
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5d

    .line 123
    :cond_e
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_42

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    goto :goto_4c

    .line 132
    :cond_42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$HotspotControllerImpl$C17PPPxxCR-pTmr2izVaDhyC9AQ;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$HotspotControllerImpl$C17PPPxxCR-pTmr2izVaDhyC9AQ;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V

    .line 139
    monitor-exit v0

    return-void

    .line 122
    :cond_5d
    :goto_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p0

    .line 139
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "HotspotController state:"

    .line 92
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mHotspotState="

    .line 93
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mNumConnectedDevices="

    .line 94
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mWaitingForTerminalState="

    .line 95
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public enableHotspot(Z)V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getNumConnectedDevices()I
    .registers 1

    .line 192
    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    return p0
.end method

.method public isHotspotEnabled()Z
    .registers 2

    .line 159
    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v0, 0xd

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isHotspotSupported()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public isHotspotTransient()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    if-nez v0, :cond_d

    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public synthetic lambda$addCallback$0$HotspotControllerImpl(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 3

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(ZI)V

    return-void
.end method

.method public onNumClientsChanged(I)V
    .registers 2

    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .registers 3

    .line 250
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .registers 3

    .line 256
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method public onStateChanged(II)V
    .registers 3

    .line 211
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->maybeResetSoftApState()V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 220
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 145
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotspotController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 147
    :try_start_20
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_36

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 152
    :cond_36
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V

    .line 154
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public setHotspotEnabled(Z)V
    .registers 4

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    const-string v1, "HotspotController"

    if-eqz v0, :cond_10

    .line 170
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "Ignoring setHotspotEnabled; waiting for terminal state."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 175
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_1f

    const-string p1, "Starting tethering"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    invoke-virtual {p1, v0, v0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_2f

    .line 186
    :cond_2a
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_2f
    return-void
.end method
