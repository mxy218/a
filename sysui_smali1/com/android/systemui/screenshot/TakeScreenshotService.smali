.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# static fields
.field private static final DEFAULT_DISLPLAY_ID:Ljava/lang/Short;

.field private static mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mShouldHideSmartTouch:Z

.field private mShouldHideVolumePanel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->DEFAULT_DISLPLAY_ID:Ljava/lang/Short;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    .line 51
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Short;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->DEFAULT_DISLPLAY_ID:Ljava/lang/Short;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/systemui/screenshot/GlobalScreenshot;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;
    .registers 1

    .line 40
    sput-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7

    .line 145
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string v2, "mz_smart_touch_switch"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    move p1, v2

    goto :goto_12

    :cond_11
    move p1, v1

    :goto_12
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShouldHideSmartTouch = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TakeScreenshotService"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    if-eqz p1, :cond_3c

    .line 148
    new-instance p1, Landroid/content/Intent;

    const-class v4, Lcom/flyme/systemui/smarttouch/HideSmartTouchService;

    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v4}, Landroid/app/Service;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 150
    :cond_3c
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "HIDE_WHEN_SCREENSHOT"

    invoke-static {p1, v4, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_49

    move v1, v2

    :cond_49
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mShouldHideVolumePanel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    if-eqz p1, :cond_71

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/volume/HideVolumeService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 155
    :cond_71
    new-instance p1, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 160
    sget-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->stopScreenshot()V

    :cond_7
    const/4 p0, 0x1

    return p0
.end method
