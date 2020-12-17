.class public Lcom/flyme/systemuitools/aod/model/AODModelImpl;
.super Ljava/lang/Object;
.source "AODModelImpl.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/model/IAODModel;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final DEBUG:Z

.field private final MSG_BATTERY_UPDATE:I

.field private final TAG:Ljava/lang/String;

.field private mBatteryStatus:Lcom/flyme/systemuitools/aod/model/BatteryStatus;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AODModelImpl"

    .line 30
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->DEBUG:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mRegister:Z

    .line 36
    iput v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->MSG_BATTERY_UPDATE:I

    .line 40
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/flyme/systemuitools/aod/model/AODModelImpl$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/model/AODModelImpl$1;-><init>(Lcom/flyme/systemuitools/aod/model/AODModelImpl;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/model/AODModelImpl;)Landroid/os/Handler;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private handleBatteryUpdate(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODModelImpl"

    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBatteryStatus:Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->isBatteryUpdateInteresting(Lcom/flyme/systemuitools/aod/model/BatteryStatus;Lcom/flyme/systemuitools/aod/model/BatteryStatus;)Z

    .line 212
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBatteryStatus:Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    const/4 v0, 0x0

    .line 213
    :goto_30
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 214
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;

    if-eqz v1, :cond_4b

    .line 216
    invoke-interface {v1, p1}, Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;->onBatteryStatusChanged(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_4e
    return-void
.end method

.method private isBatteryUpdateInteresting(Lcom/flyme/systemuitools/aod/model/BatteryStatus;Lcom/flyme/systemuitools/aod/model/BatteryStatus;)Z
    .registers 8

    .line 224
    invoke-virtual {p2}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->isPluggedIn()Z

    move-result p0

    .line 225
    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->isPluggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    if-ne p0, v2, :cond_16

    .line 226
    iget v3, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    iget v4, p2, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    if-eq v3, v4, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    if-ne v0, p0, :cond_35

    if-eqz v3, :cond_1c

    goto :goto_35

    :cond_1c
    if-eqz p0, :cond_25

    .line 235
    iget v0, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    iget v3, p2, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    if-eq v0, v3, :cond_25

    return v2

    :cond_25
    if-nez p0, :cond_34

    .line 240
    invoke-virtual {p2}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->isBatteryLow()Z

    move-result p0

    if-eqz p0, :cond_34

    iget p0, p2, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    iget p1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    if-eq p0, p1, :cond_34

    return v2

    :cond_34
    return v1

    :cond_35
    :goto_35
    return v2
.end method

.method private sendUpdates(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBatteryStatus:Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    invoke-interface {p1, p0}, Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;->onBatteryStatusChanged(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    return-void
.end method


# virtual methods
.method public getBatteryInfo()Lcom/flyme/systemuitools/aod/model/BatteryStatus;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBatteryStatus:Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_c

    .line 114
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->handleBatteryUpdate(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->registerBroadcaseReceiver(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBatteryStatus:Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    return-void
.end method

.method public registerBroadcaseReceiver(Landroid/content/Context;)V
    .registers 4

    .line 124
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mRegister:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mRegister:Z

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_18
    return-void
.end method

.method public registerCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V
    .registers 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODModelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 180
    :goto_17
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 181
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3a

    .line 183
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 188
    :cond_3d
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->removeCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->sendUpdates(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V

    return-void
.end method

.method public removeCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V
    .registers 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODModelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_3e

    .line 201
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3b

    .line 202
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_3e
    return-void
.end method
