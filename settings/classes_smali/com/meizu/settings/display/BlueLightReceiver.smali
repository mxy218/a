.class public Lcom/meizu/settings/display/BlueLightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlueLightReceiver.java"


# static fields
.field private static sColorTemperature:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "BlueLightReceiver"

    .line 15
    iput-object v0, p0, Lcom/meizu/settings/display/BlueLightReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 13
    sget v0, Lcom/meizu/settings/display/BlueLightReceiver;->sColorTemperature:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1

    .line 13
    sput p0, Lcom/meizu/settings/display/BlueLightReceiver;->sColorTemperature:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/BlueLightReceiver;)Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReceiver;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    return-object p0
.end method

.method private resetDisplaySettingsIfNeeded(Landroid/content/Context;)V
    .registers 4

    .line 72
    invoke-static {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/meizu/settings/display/BlueLightReceiver$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/meizu/settings/display/BlueLightReceiver$1;-><init>(Lcom/meizu/settings/display/BlueLightReceiver;Lcom/meizu/settings/display/QcomDisplayWrapper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/settings/display/BlueLightReceiver;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    .line 90
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReceiver;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->registerDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    return-void
.end method

.method private restoreDisplaySettingsIfNeeded(Landroid/content/Context;)V
    .registers 4

    .line 97
    invoke-static {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/meizu/settings/display/BlueLightReceiver$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/meizu/settings/display/BlueLightReceiver$2;-><init>(Lcom/meizu/settings/display/BlueLightReceiver;Lcom/meizu/settings/display/QcomDisplayWrapper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/settings/display/BlueLightReceiver;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    .line 114
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReceiver;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->registerDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluelight onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlueLightReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "flyme.intent.action.bluelight_change"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_80

    const-string p0, "bluelight_enable"

    .line 23
    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "from_twilight_change"

    .line 24
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "bluelight_enable_by_user"

    .line 25
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "night"

    .line 26
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableBlueLight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fromTwilightChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", handleByUser:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_6a

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6a
    if-eqz v0, :cond_75

    if-eqz p2, :cond_75

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightReductionEnabledByUser(Landroid/content/ContentResolver;Z)V

    :cond_75
    if-eqz v1, :cond_7c

    const/4 p2, 0x1

    .line 40
    invoke-static {p1, p0, p2}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReduction(Landroid/content/Context;ZZ)V

    goto :goto_da

    .line 42
    :cond_7c
    invoke-static {p1, p0, v3}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReduction(Landroid/content/Context;ZZ)V

    goto :goto_da

    :cond_80
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 46
    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->scheduleNext(Landroid/content/Context;)V

    goto :goto_da

    :cond_8c
    const-string p2, "flyme.intent.action.display_reset"

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_98

    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/BlueLightReceiver;->resetDisplaySettingsIfNeeded(Landroid/content/Context;)V

    goto :goto_da

    :cond_98
    const-string p2, "flyme.intent.action.display_restore"

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/BlueLightReceiver;->restoreDisplaySettingsIfNeeded(Landroid/content/Context;)V

    goto :goto_da

    :cond_a4
    const-string p0, "flyme.intent.action.BLUE_LIGHT_REDUCTION"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "android.intent.action.TIME_SET"

    if-nez p0, :cond_bc

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bc

    const-string p0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_da

    .line 53
    :cond_bc
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d3

    .line 54
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->isSetTimeChangeByUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_da

    .line 55
    invoke-static {p1, v3}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->setTimeChangeByUser(Landroid/content/Context;Z)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;)V

    goto :goto_da

    .line 59
    :cond_d3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;)V

    :cond_da
    :goto_da
    return-void
.end method
