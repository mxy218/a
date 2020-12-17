.class public Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CastTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAST_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 67
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    .line 246
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/CastTile$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 78
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 80
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 81
    iput-object p5, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 82
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CastTile;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/CastTile;Z)Z
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .registers 1

    .line 59
    sget-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getActiveDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 151
    iget v2, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 153
    :cond_23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method private getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .registers 2

    .line 242
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    if-eqz p1, :cond_5

    goto :goto_d

    .line 243
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_cast_device_default_name:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_11

    .line 236
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_casting_turned_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    .line 115
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.CAST_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x72

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cast_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 4

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_b

    return-void

    .line 134
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    instance-of v2, v2, Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_23

    goto :goto_2f

    .line 144
    :cond_23
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    goto :goto_39

    .line 140
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$0TU5SvbFGUs5F0udF1tvlhHVObs;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$0TU5SvbFGUs5F0udF1tvlhHVObs;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :goto_39
    return-void
.end method

.method protected handleLongClick()V
    .registers 1

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 5

    .line 101
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-nez p1, :cond_22

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    :cond_22
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 12

    .line 185
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cast_title:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 186
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 187
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p2

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 193
    iget v7, v3, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v7, v5, :cond_5e

    .line 194
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 195
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_cast_name:I

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, p2

    .line 197
    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    move v2, p2

    goto :goto_62

    :cond_5e
    if-ne v7, v6, :cond_1c

    move v2, v6

    goto :goto_1c

    :cond_62
    :goto_62
    if-eqz v2, :cond_72

    .line 204
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_72

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_connecting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 207
    :cond_72
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_79

    sget v1, Lcom/android/systemui/R$drawable;->ic_cast_connected:I

    goto :goto_7b

    .line 208
    :cond_79
    sget v1, Lcom/android/systemui/R$drawable;->ic_cast:I

    .line 207
    :goto_7b
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 209
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    if-nez v1, :cond_bb

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_8a

    goto :goto_bb

    .line 218
    :cond_8a
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 219
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_cast_no_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_quick_settings_not_available:I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_f1

    .line 210
    :cond_bb
    :goto_bb
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_c0

    goto :goto_c1

    :cond_c0
    move v5, v6

    :goto_c1
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 211
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez p2, :cond_cb

    const-string p2, ""

    .line 212
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 214
    :cond_cb
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_details:I

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 216
    const-class p2, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 224
    :goto_f1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->access$200(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 59
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .registers 2

    .line 109
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setCurrentUserId(I)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$CastTile()V
    .registers 2

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    return-void
.end method

.method public synthetic lambda$showDetail$1$CastTile(Landroid/view/View;)V
    .registers 3

    .line 165
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 166
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$showDetail$2$CastTile()V
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public synthetic lambda$showDetail$3$CastTile()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$MhJepZXXVH2Vaj80AOmfpppL58s;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$MhJepZXXVH2Vaj80AOmfpppL58s;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 2

    .line 94
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public showDetail(Z)V
    .registers 3

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
