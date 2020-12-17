.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;
.super Ljava/lang/Object;
.source "MiniHeadsupComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;
    }
.end annotation


# static fields
.field private static sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;


# instance fields
.field private final mApplication:Lcom/android/systemui/SystemUIApplication;

.field private final mContext:Landroid/content/Context;

.field private mExistAutoSnooze:Z

.field private mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

.field private final mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field private mMiniWindowShow:Z

.field private mShow:Z

.field private mShowingKey:Ljava/lang/String;

.field private mStart:Z

.field private mVideoKey:Ljava/lang/String;

.field private final mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    .line 51
    const-class v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 52
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mApplication:Lcom/android/systemui/SystemUIApplication;

    .line 54
    sget v0, Lcom/android/systemui/R$layout;->miniheadsup_window:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .line 55
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setCallback(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;)V

    .line 61
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->hideMiniHeadsup()V

    return-void
.end method

.method private final hideMiniHeadsup()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    .line 246
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-eqz v0, :cond_16

    .line 247
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->stopMiniHeadsup()V

    :cond_16
    return-void
.end method

.method private isDNDEnableAndInGameMode()Z
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    if-eqz p0, :cond_c

    .line 306
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isShowMiniForPop()Z
    .registers 1

    .line 256
    iget-boolean p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShow:Z

    return p0
.end method

.method public static newComponent(Landroid/content/Context;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;
    .registers 2

    .line 43
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    .line 46
    :cond_b
    sget-object p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    return-object p0
.end method

.method private final showMiniHeadsup()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    return-void
.end method

.method private startMiniHeadsup()V
    .registers 5

    const-string v0, "MiniHeadsup"

    const-string/jumbo v1, "start MiniHeadsup"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_42

    .line 204
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    invoke-direct {v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 208
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 209
    iget v0, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x31

    .line 210
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x1000108

    .line 211
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 215
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 216
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .line 217
    invoke-interface {v0, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_42
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->hideMiniHeadsup()V

    .line 220
    iput-boolean v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    return-void
.end method

.method private stopMiniHeadsup()V
    .registers 3

    const-string v0, "MiniHeadsup"

    const-string/jumbo v1, "stop MiniHeadsup"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 227
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setFirstGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v1, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v1, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setChildAction(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 231
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSnoozeAction(Landroid/app/PendingIntent;)V

    :cond_35
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    .line 234
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->showMiniForPop(Z)V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 14

    .line 65
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 68
    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_24

    .line 69
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 70
    invoke-static {v2}, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->checkWhiteList(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.flyme.systemuitools"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 71
    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mVideoKey:Ljava/lang/String;

    .line 75
    :cond_24
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "mz_window_mode_video"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_32

    move v2, v4

    goto :goto_33

    :cond_32
    move v2, v5

    .line 76
    :goto_33
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isMiniPkg(Ljava/lang/String;)Z

    move-result v6

    .line 77
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result v7

    if-eqz v7, :cond_4b

    if-nez v6, :cond_53

    if-nez v2, :cond_53

    :cond_4b
    if-eqz v6, :cond_55

    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isShowMiniForPop()Z

    move-result v7

    if-eqz v7, :cond_55

    :cond_53
    move v7, v4

    goto :goto_56

    :cond_55
    move v7, v5

    .line 78
    :goto_56
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVideo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isDNDEnableAndInGameMode "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isMiniPkg "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isShowMiniForPop "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isShowMiniForPop()Z

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MiniHeadsup"

    .line 78
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_216

    .line 81
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "flyme.miniheadsup"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1af

    :try_start_98
    const-string v7, "first_color"

    .line 87
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 88
    iget-object v8, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    if-nez v7, :cond_ab

    const/16 v7, 0x9b

    const/16 v9, 0xff

    invoke-static {v7, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_b1

    :cond_ab
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_b1
    invoke-virtual {v8, v7}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setFirstGroupColor(I)V

    const-string v7, "second_left_color"

    .line 90
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "second_right_color"

    .line 91
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 92
    iget-object v9, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/high16 v10, -0x1000000

    if-nez v7, :cond_c8

    move v7, v10

    goto :goto_ce

    :cond_c8
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_ce
    if-nez v8, :cond_d2

    move v8, v10

    goto :goto_d8

    .line 93
    :cond_d2
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 92
    :goto_d8
    invoke-virtual {v9, v7, v8}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupColor(II)V

    const-string v7, "first_icon"

    .line 95
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "first_text"

    .line 96
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_f1

    if-nez v8, :cond_f1

    const-string p1, "first_icon and first_text is null"

    .line 99
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_f1
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    check-cast v7, Landroid/graphics/Bitmap;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setFirstGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string v6, "first_action"

    .line 104
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 105
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_10a

    move v3, v4

    goto :goto_10b

    :cond_10a
    move v3, v5

    .line 106
    :goto_10b
    iget-object v7, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    check-cast v6, Landroid/app/PendingIntent;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v6, v3, v8}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAction(Landroid/app/PendingIntent;Ljava/lang/Boolean;Landroid/os/UserHandle;)V

    const-string p1, "second_left_value"

    .line 108
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "second_right_value"

    .line 109
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v6, p1, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "second_left_action"

    .line 115
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "second_right_action"

    .line 116
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    check-cast p1, Landroid/app/PendingIntent;

    check-cast v3, Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setChildAction(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string/jumbo p1, "third_color"

    .line 119
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 120
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    if-nez p1, :cond_151

    goto :goto_157

    :cond_151
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_157
    invoke-virtual {v3, v10}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThirdGroupColor(I)V

    const-string/jumbo p1, "third_icon"

    .line 122
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v3, "third_text"

    .line 123
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_172

    if-nez v3, :cond_172

    .line 125
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p1, v5}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThridGroupEnable(Z)V

    goto :goto_188

    .line 127
    :cond_172
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    move-object v7, p1

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThridGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 128
    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v6, v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThridGroupEnable(Z)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_182} :catch_1a7

    if-eqz p1, :cond_188

    if-eqz v3, :cond_188

    move p1, v4

    goto :goto_189

    :cond_188
    :goto_188
    move p1, v5

    .line 134
    :goto_189
    :try_start_189
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget-object v1, v1, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSnoozeAction(Landroid/app/PendingIntent;)V

    .line 136
    iget-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mExistAutoSnooze:Z

    if-nez v1, :cond_1b1

    const-string v1, "auto_snooze"

    .line 137
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v2, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAutoSnooze(Z)V

    .line 139
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mExistAutoSnooze:Z
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1a1} :catch_1a2

    goto :goto_1b1

    :catch_1a2
    move-exception v1

    move-object v11, v1

    move v1, p1

    move-object p1, v11

    goto :goto_1a9

    :catch_1a7
    move-exception p1

    move v1, v5

    .line 144
    :goto_1a9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    move v4, v5

    goto :goto_1b1

    :cond_1af
    move p1, v5

    move v4, p1

    :cond_1b1
    :goto_1b1
    if-eqz v4, :cond_1fd

    .line 148
    iget-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v1, :cond_1d3

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    if-eqz v1, :cond_1d3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 150
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->onFirstLayout()V

    .line 151
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    if-eqz p1, :cond_223

    .line 153
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->skipToThrid()V

    goto :goto_223

    :cond_1d3
    if-nez p1, :cond_223

    .line 156
    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    .line 157
    iput-boolean v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mExistAutoSnooze:Z

    .line 158
    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-nez p1, :cond_1e0

    .line 159
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->startMiniHeadsup()V

    .line 162
    :cond_1e0
    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz p1, :cond_1ea

    .line 163
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->cancelAnimationWithoutCallback()V

    goto :goto_1ed

    .line 165
    :cond_1ea
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->showMiniHeadsup()V

    .line 167
    :goto_1ed
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->onFirstLayout()V

    .line 168
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 169
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p0, v5}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateShow(Z)V

    goto :goto_223

    .line 173
    :cond_1fd
    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz p1, :cond_223

    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    if-eqz p1, :cond_223

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_223

    .line 174
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    goto :goto_223

    .line 178
    :cond_216
    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-nez p1, :cond_223

    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-eqz p1, :cond_223

    if-nez v7, :cond_223

    .line 179
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->stopMiniHeadsup()V

    :cond_223
    :goto_223
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    .line 184
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 185
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 186
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 187
    iput-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    .line 190
    :cond_1c
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mVideoKey:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 191
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 192
    iput-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mVideoKey:Ljava/lang/String;

    .line 195
    :cond_33
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result p1

    if-nez p1, :cond_44

    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-nez p1, :cond_44

    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-eqz p1, :cond_44

    .line 196
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->stopMiniHeadsup()V

    :cond_44
    return-void
.end method

.method public showMiniForPop(Z)V
    .registers 2

    .line 252
    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShow:Z

    return-void
.end method
