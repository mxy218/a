.class public Lcom/android/server/display/bluelight/BlueLightController;
.super Ljava/lang/Object;
.source "BlueLightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlueLightController"

.field private static sBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;


# instance fields
.field private final BLUELIGHT_TIME_CONFIG_DISABLE:I

.field private final BLUELIGHT_TIME_CONFIG_TWILIGHT:I

.field private final TIME_CONFIG_TYPE_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mEnableKeyProtectMode:Z

.field private mFromTwilightChange:Z

.field private mInitialized:Z

.field private mIsNight:Z

.field private mIsTimeConfigChangeToTwilight:Z

.field private mSettingsObserver:Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;

.field private mTwilight:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->BLUELIGHT_TIME_CONFIG_DISABLE:I

    .line 24
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/bluelight/BlueLightController;->BLUELIGHT_TIME_CONFIG_TWILIGHT:I

    .line 26
    nop

    .line 27
    const-string/jumbo v1, "time_config_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/bluelight/BlueLightController;->TIME_CONFIG_TYPE_URI:Landroid/net/Uri;

    .line 34
    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsNight:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mFromTwilightChange:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mEnableKeyProtectMode:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mInitialized:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsTimeConfigChangeToTwilight:Z

    .line 67
    iput-object p1, p0, Lcom/android/server/display/bluelight/BlueLightController;->mContext:Landroid/content/Context;

    .line 68
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 69
    invoke-direct {p0}, Lcom/android/server/display/bluelight/BlueLightController;->registerSettingsObserver()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/display/bluelight/BlueLightController;->handleSettingsChanged()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/bluelight/BlueLightController;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/bluelight/BlueLightController;

    .line 19
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->TIME_CONFIG_TYPE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/bluelight/BlueLightController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/bluelight/BlueLightController;

    .line 19
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/bluelight/BlueLightController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/bluelight/BlueLightController;
    .param p1, "x1"  # Z

    .line 19
    iput-boolean p1, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsTimeConfigChangeToTwilight:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/bluelight/BlueLightController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/bluelight/BlueLightController;

    .line 19
    invoke-direct {p0}, Lcom/android/server/display/bluelight/BlueLightController;->handleSettingsChanged()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/bluelight/BlueLightController;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/android/server/display/bluelight/BlueLightController;->sBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/android/server/display/bluelight/BlueLightController;

    invoke-direct {v0, p0}, Lcom/android/server/display/bluelight/BlueLightController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/bluelight/BlueLightController;->sBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;

    .line 63
    :cond_b
    sget-object v0, Lcom/android/server/display/bluelight/BlueLightController;->sBlueLightController:Lcom/android/server/display/bluelight/BlueLightController;

    return-object v0
.end method

.method private handleSettingsChanged()V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string/jumbo v2, "time_config_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "bluelightTimeConfigMode":I
    invoke-direct {p0, v0}, Lcom/android/server/display/bluelight/BlueLightController;->isImmediatelyBlueLightEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 94
    .local v3, "immediatelyBlueLightModeEnable":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluelightTimeConfigMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mImmediatelyBlueLightModeEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BlueLightController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v4, 0x1

    if-ne v4, v2, :cond_3d

    .line 97
    iget-object v4, p0, Lcom/android/server/display/bluelight/BlueLightController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v4}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/display/bluelight/BlueLightController;->handleTwilightState(Lcom/android/server/twilight/TwilightState;Z)V

    goto :goto_56

    .line 99
    :cond_3d
    iget-object v5, p0, Lcom/android/server/display/bluelight/BlueLightController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v5}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/android/server/display/bluelight/BlueLightController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v5}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_53

    :cond_52
    move v4, v1

    :goto_53
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/display/bluelight/BlueLightController;->sendBlueLightBroadcast(ZZZ)V

    .line 101
    :goto_56
    return-void
.end method

.method private isImmediatelyBlueLightEnabled(Landroid/content/ContentResolver;)Z
    .registers 5
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 85
    const/4 v0, 0x0

    const-string/jumbo v1, "immediately_on_or_off"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move v0, v2

    :cond_c
    return v0
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 74
    new-instance v0, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;-><init>(Lcom/android/server/display/bluelight/BlueLightController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mSettingsObserver:Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;

    .line 75
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 77
    const-string/jumbo v1, "time_config_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/bluelight/BlueLightController;->mSettingsObserver:Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;

    .line 76
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    nop

    .line 80
    const-string/jumbo v1, "immediately_on_or_off"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/bluelight/BlueLightController;->mSettingsObserver:Lcom/android/server/display/bluelight/BlueLightController$SettingsObserver;

    .line 79
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    return-void
.end method

.method private sendBlueLightBroadcast(ZZ)V
    .registers 4
    .param p1, "enableKeyProtectMode"  # Z
    .param p2, "fromTwilightChange"  # Z

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/bluelight/BlueLightController;->sendBlueLightBroadcast(ZZZ)V

    .line 125
    return-void
.end method

.method private sendBlueLightBroadcast(ZZZ)V
    .registers 7
    .param p1, "enableKeyProtectMode"  # Z
    .param p2, "fromTwilightChange"  # Z
    .param p3, "isNight"  # Z

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBlueLightstate, oldState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/bluelight/BlueLightController;->mEnableKeyProtectMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/bluelight/BlueLightController;->mFromTwilightChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsNight:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), newState("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlueLightController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mInitialized:Z

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsTimeConfigChangeToTwilight:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mEnableKeyProtectMode:Z

    if-ne v0, p1, :cond_58

    iget-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mFromTwilightChange:Z

    if-ne v0, p2, :cond_58

    iget-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsNight:Z

    if-eq v0, p3, :cond_8d

    .line 132
    :cond_58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mInitialized:Z

    .line 133
    iput-boolean p1, p0, Lcom/android/server/display/bluelight/BlueLightController;->mEnableKeyProtectMode:Z

    .line 134
    iput-boolean p2, p0, Lcom/android/server/display/bluelight/BlueLightController;->mFromTwilightChange:Z

    .line 135
    iput-boolean p3, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsNight:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mIsTimeConfigChangeToTwilight:Z

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "flyme.intent.action.bluelight_change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "bluelight_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const-string v1, "from_twilight_change"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "night"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/server/display/bluelight/BlueLightController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_8d
    return-void
.end method


# virtual methods
.method public handleDisplayChanged(I)V
    .registers 3
    .param p1, "state"  # I

    .line 104
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 105
    invoke-direct {p0}, Lcom/android/server/display/bluelight/BlueLightController;->handleSettingsChanged()V

    .line 107
    :cond_6
    return-void
.end method

.method public handleTwilightState(Lcom/android/server/twilight/TwilightState;Z)V
    .registers 6
    .param p1, "twilightState"  # Lcom/android/server/twilight/TwilightState;
    .param p2, "fromTwilightChange"  # Z

    .line 110
    if-nez p1, :cond_3

    .line 111
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/bluelight/BlueLightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "time_config_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    move v0, v1

    .line 116
    .local v0, "isTwilightConfigMode":Z
    if-eqz v0, :cond_1f

    .line 117
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    .line 118
    .local v1, "night":Z
    invoke-direct {p0, v1, p2, v1}, Lcom/android/server/display/bluelight/BlueLightController;->sendBlueLightBroadcast(ZZZ)V

    .line 121
    .end local v1  # "night":Z
    :cond_1f
    return-void
.end method
