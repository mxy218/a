.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "HdmiCecLocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;,
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    }
.end annotation


# static fields
.field private static final SET_MENU_LANGUAGE:Z

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevicePlayback"

.field private static final WAKE_ON_HOTPLUG:Z


# instance fields
.field private mAutoTvOff:Z

.field private mLocalActivePath:I

.field private mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    nop

    .line 47
    const-string/jumbo v0, "ro.hdmi.wake_on_hotplug"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    .line 49
    nop

    .line 50
    const-string/jumbo v0, "ro.hdmi.set_menu_language"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 4

    .line 69
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 66
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    .line 71
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    .line 75
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method private getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    if-nez v0, :cond_28

    .line 201
    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.hdmi.keep_awake"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 202
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    goto :goto_28

    .line 206
    :cond_19
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No wakelock is used to keep the display on."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    return-object v0
.end method

.method private routeToPort(I)V
    .registers 2

    .line 355
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    .line 356
    return-void
.end method


# virtual methods
.method protected canGoToStandby()Z
    .registers 2

    .line 222
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 342
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 345
    if-nez p1, :cond_25

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 346
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 347
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 346
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 349
    :cond_25
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setIsActiveSource(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->checkIfPendingActionsCleared()V

    .line 351
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 365
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoTvOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protected findAudioReceiverAddress()I
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 334
    const/4 v0, 0x5

    return v0

    .line 336
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method protected findKeyReceiverAddress()I
    .registers 2

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected getLocalActivePath()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mLocalActivePath:I

    return v0
.end method

.method protected getPreferredAddress()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 113
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 257
    const-string v0, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 258
    sget-boolean v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 259
    return v2

    .line 263
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const/4 v3, 0x3

    const-string v4, "US-ASCII"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 265
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_33

    .line 269
    return v3

    .line 274
    :cond_33
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 275
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 274
    invoke-static {p1, v2}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 277
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 283
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 284
    return v3

    .line 286
    :cond_63
    goto :goto_41

    .line 287
    :cond_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t handle <Set Menu Language> of "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_78} :catch_79

    .line 288
    return v2

    .line 289
    :catch_79
    move-exception p1

    .line 290
    const-string v1, "Can\'t handle <Set Menu Language>"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    return v2
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 300
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2b

    .line 301
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 302
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_2b

    .line 305
    :cond_19
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eq v0, p1, :cond_2a

    .line 307
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 309
    :cond_2a
    return v1

    .line 303
    :cond_2b
    :goto_2b
    return v1
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 316
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    if-ne v0, v1, :cond_20

    .line 317
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_20

    .line 318
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 319
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eq v0, p1, :cond_20

    .line 320
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 323
    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    .line 229
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1
.end method

.method protected maySendActiveSource(I)V
    .registers 5

    .line 246
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz v0, :cond_21

    .line 247
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 248
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 247
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 253
    :cond_21
    return-void
.end method

.method protected onAddressAllocated(II)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 82
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_1c

    .line 83
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v0

    const/16 v1, 0xf

    .line 83
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 86
    :cond_1c
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 87
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDeviceType:I

    .line 86
    invoke-static {p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 88
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    .line 88
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 90
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    if-nez p1, :cond_59

    .line 94
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 106
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startQueuedActions()V

    .line 107
    return-void
.end method

.method onHotplug(IZ)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 148
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    .line 150
    sget-boolean p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 151
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 153
    :cond_1b
    if-nez p2, :cond_24

    .line 154
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 156
    :cond_24
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    if-nez p1, :cond_12

    goto :goto_34

    .line 165
    :cond_12
    if-eqz p2, :cond_26

    const/4 p1, 0x1

    if-eq p2, p1, :cond_18

    goto :goto_33

    .line 172
    :cond_18
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/16 v0, 0xf

    .line 173
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_33

    .line 167
    :cond_26
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v0, 0x0

    .line 168
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 169
    nop

    .line 176
    :goto_33
    return-void

    .line 163
    :cond_34
    :goto_34
    return-void
.end method

.method queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 128
    const-class v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDevicePlayback"

    const/4 v3, 0x0

    if-nez v1, :cond_22

    .line 130
    const-string/jumbo v1, "queryDisplayStatus already in progress"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 132
    return-void

    .line 134
    :cond_22
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    move-result-object v0

    .line 136
    if-nez v0, :cond_32

    .line 137
    const-string v0, "Cannot initiate queryDisplayStatus"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 139
    return-void

    .line 141
    :cond_32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 142
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 182
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    .line 183
    return-void
.end method

.method setIsActiveSource(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 189
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    .line 190
    if-eqz p1, :cond_f

    .line 191
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    goto :goto_16

    .line 193
    :cond_f
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 195
    :goto_16
    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    .line 121
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    const-string/jumbo v1, "persist.sys.hdmi.addr.playback"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected wakeUpIfActiveSource()V
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-nez v0, :cond_5

    .line 235
    return-void

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 240
    :cond_19
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 242
    :cond_1e
    return-void
.end method
