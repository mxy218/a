.class public Lcom/android/server/display/nightmode/NightModeTwilightController;
.super Ljava/lang/Object;
.source "NightModeTwilightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final NIGHT_MODE_TWILIGHT_SUPPORT:Ljava/lang/String; = "night_mode_twilight_support"

.field private static final NIGHT_MODE_TYPE:Ljava/lang/String; = "flymelab_flyme_night_mode_type"

.field private static final TAG:Ljava/lang/String; = "NightModeTwilight"

.field private static sNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;


# instance fields
.field private final NIGHT_MODE_TIME_CLOSE:I

.field private final NIGHT_MODE_TIME_TWILIGHT:I

.field private final NIGHT_MODE_TIME_USER:I

.field private final TIME_CONFIG_TYPE_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mSettingsObserver:Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;

.field private mTwilight:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->NIGHT_MODE_TIME_CLOSE:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->NIGHT_MODE_TIME_TWILIGHT:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->NIGHT_MODE_TIME_USER:I

    .line 34
    nop

    .line 35
    const-string v0, "flymelab_flyme_night_mode_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->TIME_CONFIG_TYPE_URI:Landroid/net/Uri;

    .line 64
    iput-object p1, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mContext:Landroid/content/Context;

    .line 65
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 66
    invoke-direct {p0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->registerSettingsObserver()V

    .line 67
    invoke-direct {p0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->handleSettingsChanged()V

    .line 68
    invoke-direct {p0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->setTwilightSupportInfo()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/nightmode/NightModeTwilightController;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/nightmode/NightModeTwilightController;

    .line 23
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->TIME_CONFIG_TYPE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/nightmode/NightModeTwilightController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/nightmode/NightModeTwilightController;

    .line 23
    invoke-direct {p0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->handleSettingsChanged()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/nightmode/NightModeTwilightController;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/android/server/display/nightmode/NightModeTwilightController;->sNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/android/server/display/nightmode/NightModeTwilightController;

    invoke-direct {v0, p0}, Lcom/android/server/display/nightmode/NightModeTwilightController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/nightmode/NightModeTwilightController;->sNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;

    .line 60
    :cond_b
    sget-object v0, Lcom/android/server/display/nightmode/NightModeTwilightController;->sNightModeTwilightController:Lcom/android/server/display/nightmode/NightModeTwilightController;

    return-object v0
.end method

.method private handleSettingsChanged()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/nightmode/NightModeTwilightController;->handleTwilightState(Lcom/android/server/twilight/TwilightState;Z)V

    .line 81
    return-void
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 72
    new-instance v0, Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;-><init>(Lcom/android/server/display/nightmode/NightModeTwilightController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mSettingsObserver:Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;

    .line 73
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 75
    const-string v1, "flymelab_flyme_night_mode_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mSettingsObserver:Lcom/android/server/display/nightmode/NightModeTwilightController$SettingsObserver;

    .line 74
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    return-void
.end method

.method private sendNightModeTwilightBroadcast(ZZ)V
    .registers 5
    .param p1, "fromTwilightChange"  # Z
    .param p2, "isNight"  # Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "flyme.intent.action.nightmode_twilight_change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "from_twilight_change"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "night"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private setTwilightSupportInfo()V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_mode_twilight_support"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "support":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    .line 86
    iget-object v3, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    :cond_1a
    return-void
.end method


# virtual methods
.method public handleDisplayChanged(I)V
    .registers 2
    .param p1, "state"  # I

    .line 94
    return-void
.end method

.method public handleTwilightState(Lcom/android/server/twilight/TwilightState;Z)V
    .registers 6
    .param p1, "twilightState"  # Lcom/android/server/twilight/TwilightState;
    .param p2, "fromTwilightChange"  # Z

    .line 97
    if-nez p1, :cond_3

    .line 98
    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/nightmode/NightModeTwilightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flymelab_flyme_night_mode_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    move v1, v2

    :cond_14
    move v0, v1

    .line 103
    .local v0, "isTwilightConfigMode":Z
    if-eqz v0, :cond_1e

    .line 104
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    .line 105
    .local v1, "night":Z
    invoke-direct {p0, p2, v1}, Lcom/android/server/display/nightmode/NightModeTwilightController;->sendNightModeTwilightBroadcast(ZZ)V

    .line 107
    .end local v1  # "night":Z
    :cond_1e
    return-void
.end method
