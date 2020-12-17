.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$ContentObserverRegister;,
        Lcom/android/server/wm/DisplayRotation$SettingsObserver;,
        Lcom/android/server/wm/DisplayRotation$OrientationListener;,
        Lcom/android/server/wm/DisplayRotation$FixedToUserRotation;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field static final FIXED_TO_USER_ROTATION_DEFAULT:I = 0x0

.field static final FIXED_TO_USER_ROTATION_DISABLED:I = 0x1

.field static final FIXED_TO_USER_ROTATION_ENABLED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final isDefaultDisplay:Z

.field private mAllowAllRotations:I

.field private final mCarDockRotation:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppOrientation:I

.field private mDefaultFixedToUserRotation:Z

.field private mDemoHdmiRotation:I

.field private mDemoHdmiRotationLock:Z

.field private mDemoRotation:I

.field private mDemoRotationLock:Z

.field private final mDeskDockRotation:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field private mFixedToUserRotation:I

.field mLandscapeRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLidOpenRotation:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSeascapeRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field private mShowRotationSuggestions:I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSupportAutoRotation:Z

.field private final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayRotation:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 156
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 10
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p3, "displayPolicy"  # Lcom/android/server/wm/DisplayPolicy;
    .param p4, "displayWindowSettings"  # Lcom/android/server/wm/DisplayWindowSettings;
    .param p5, "context"  # Landroid/content/Context;
    .param p6, "lock"  # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 96
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 98
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 130
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 152
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    .line 153
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .line 164
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 165
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 166
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 167
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 168
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 169
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 170
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 174
    const v0, 0x10e0064

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 176
    const v0, 0x10e002a

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 178
    const v0, 0x10e0042

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 180
    const v0, 0x10e00b8

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 183
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_84

    .line 184
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 185
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 187
    new-instance v1, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->observe()V

    .line 193
    new-instance v1, Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/DisplayRotation$1;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;)V

    .line 229
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 231
    .end local v0  # "uiHandler":Landroid/os/Handler;
    .end local v1  # "t":Ljava/lang/Thread;
    :cond_84
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/DisplayRotation;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"  # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wm/DisplayRotation;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"  # I

    .line 61
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayRotation;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;

    .line 61
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"  # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"  # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayRotation;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DisplayRotation;

    .line 61
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result v0

    return v0
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "allowAll"  # I

    .line 879
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 887
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 885
    :cond_d
    const-string v0, "true"

    return-object v0

    .line 883
    :cond_10
    const-string v0, "false"

    return-object v0

    .line 881
    :cond_13
    const-string v0, "unknown"

    return-object v0
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .param p1, "rotation"  # I

    .line 774
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .param p1, "rotation"  # I

    .line 770
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isRotationChoicePossible(I)Z
    .registers 11
    .param p1, "orientation"  # I

    .line 805
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 811
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 812
    return v2

    .line 815
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 816
    .local v0, "lidState":I
    if-ne v0, v1, :cond_1b

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_1b

    .line 817
    return v2

    .line 820
    :cond_1b
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v3

    .line 821
    .local v3, "dockMode":I
    const/4 v4, 0x0

    .line 822
    .local v4, "carDockEnablesAccelerometer":Z
    const/4 v5, 0x2

    if-ne v3, v5, :cond_26

    .line 823
    return v2

    .line 826
    :cond_26
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 827
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v6

    .line 828
    .local v6, "deskDockEnablesAccelerometer":Z
    if-eq v3, v1, :cond_34

    const/4 v7, 0x3

    if-eq v3, v7, :cond_34

    const/4 v7, 0x4

    if-ne v3, v7, :cond_37

    :cond_34
    if-nez v6, :cond_37

    .line 832
    return v2

    .line 835
    :cond_37
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    .line 836
    .local v7, "hdmiPlugged":Z
    if-eqz v7, :cond_44

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v8, :cond_44

    .line 837
    return v2

    .line 839
    :cond_44
    if-eqz v7, :cond_4d

    if-nez v3, :cond_4d

    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v8, :cond_4d

    .line 841
    return v2

    .line 843
    :cond_4d
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v8, :cond_52

    .line 844
    return v2

    .line 846
    :cond_52
    iget-object v8, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 847
    return v2

    .line 849
    :cond_5b
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v8, :cond_60

    .line 850
    return v2

    .line 854
    :cond_60
    const/4 v8, -0x1

    if-eq p1, v8, :cond_69

    if-eq p1, v5, :cond_69

    packed-switch p1, :pswitch_data_6a

    .line 865
    return v2

    .line 861
    :cond_69
    :pswitch_69  #0xb, 0xc, 0xd
    return v1

    :pswitch_data_6a
    .packed-switch 0xb
        :pswitch_69  #0000000b
        :pswitch_69  #0000000c
        :pswitch_69  #0000000d
    .end packed-switch
.end method

.method private isValidRotationChoice(I)Z
    .registers 6
    .param p1, "preferredRotation"  # I

    .line 779
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    packed-switch v0, :pswitch_data_28

    .line 800
    return v3

    .line 782
    :pswitch_e  #0xd
    if-ltz p1, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    return v2

    .line 788
    :pswitch_13  #0xc
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    return v2

    .line 792
    :pswitch_1a  #0xb
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 797
    :cond_1f
    if-ltz p1, :cond_26

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-eq p1, v0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2

    :pswitch_data_28
    .packed-switch 0xb
        :pswitch_1a  #0000000b
        :pswitch_13  #0000000c
        :pswitch_e  #0000000d
    .end packed-switch
.end method

.method private needSensorRunning()Z
    .registers 6

    .line 530
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 533
    return v1

    .line 536
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    .line 537
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1c

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1d

    .line 543
    :cond_1c
    return v3

    .line 547
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 548
    .local v0, "dockMode":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3d

    :cond_2e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 550
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eq v0, v3, :cond_3d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3d

    if-ne v0, v2, :cond_3e

    .line 556
    :cond_3d
    return v3

    .line 559
    :cond_3e
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v3, :cond_4c

    .line 571
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v2, :cond_4b

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v2, v3, :cond_4b

    move v1, v3

    :cond_4b
    return v1

    .line 574
    :cond_4c
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return v1
.end method

.method private readRotation(I)I
    .registers 4
    .param p1, "resID"  # I

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_21

    .line 236
    .local v0, "rotation":I
    if-eqz v0, :cond_1f

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_19

    .line 248
    .end local v0  # "rotation":I
    goto :goto_22

    .line 244
    .restart local v0  # "rotation":I
    :cond_19
    const/4 v1, 0x3

    return v1

    .line 242
    :cond_1b
    const/4 v1, 0x2

    return v1

    .line 240
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 238
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 246
    .end local v0  # "rotation":I
    :catch_21
    move-exception v0

    .line 249
    :goto_22
    const/4 v0, -0x1

    return v0
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .registers 4
    .param p1, "rotation"  # I
    .param p2, "isValid"  # Z

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 871
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 873
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_15

    .line 874
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 876
    :cond_15
    return-void
.end method

.method private setUserRotation(II)V
    .registers 8
    .param p1, "userRotationMode"  # I
    .param p2, "userRotation"  # I

    .line 360
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    .line 365
    .local v1, "accelerometerRotation":I
    :goto_10
    const/4 v2, -0x2

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 367
    const-string v3, "user_rotation"

    invoke-static {v0, v3, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 369
    return-void

    .line 372
    .end local v0  # "res":Landroid/content/ContentResolver;
    .end local v1  # "accelerometerRotation":I
    :cond_1c
    const/4 v0, 0x0

    .line 373
    .local v0, "changed":Z
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, p1, :cond_24

    .line 374
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 375
    const/4 v0, 0x1

    .line 377
    :cond_24
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v3, p2, :cond_2b

    .line 378
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 379
    const/4 v0, 0x1

    .line 381
    :cond_2b
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    .line 383
    if-eqz v0, :cond_39

    .line 384
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 387
    :cond_39
    return-void
.end method

.method private updateOrientationListenerLw()V
    .registers 8

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_96

    .line 486
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    .line 487
    .local v0, "screenOnEarly":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 488
    .local v1, "awake":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    .line 489
    .local v2, "keyguardDrawComplete":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v3

    .line 493
    .local v3, "windowManagerDrawComplete":Z
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenOnEarly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", awake="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentAppOrientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientationSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", keyguardDrawComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", windowManagerDrawComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_6c
    const/4 v4, 0x1

    .line 503
    .local v4, "disable":Z
    if-eqz v0, :cond_88

    if-eqz v1, :cond_88

    if-eqz v2, :cond_88

    if-eqz v3, :cond_88

    .line 504
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 505
    const/4 v4, 0x0

    .line 507
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v5, :cond_88

    .line 514
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable(Z)V

    .line 519
    :cond_88
    if-eqz v4, :cond_95

    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v5, :cond_95

    .line 520
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    .line 522
    :cond_95
    return-void

    .line 483
    .end local v0  # "screenOnEarly":Z
    .end local v1  # "awake":Z
    .end local v2  # "keyguardDrawComplete":Z
    .end local v3  # "windowManagerDrawComplete":Z
    .end local v4  # "disable":Z
    :cond_96
    :goto_96
    return-void
.end method

.method private updateSettings()Z
    .registers 11

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 900
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 902
    .local v1, "shouldUpdateRotation":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 903
    const/4 v3, 0x0

    .line 907
    .local v3, "shouldUpdateOrientationListener":Z
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_16

    .line 908
    move v4, v7

    goto :goto_1c

    .line 909
    :cond_16
    const-string v4, "show_rotation_suggestions"

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    :goto_1c
    nop

    .line 913
    .local v4, "showRotationSuggestions":I
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v8, v4, :cond_24

    .line 914
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 915
    const/4 v3, 0x1

    .line 919
    :cond_24
    const-string v8, "user_rotation"

    invoke-static {v0, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 922
    .local v8, "userRotation":I
    iget v9, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v9, v8, :cond_31

    .line 923
    iput v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 924
    const/4 v1, 0x1

    .line 928
    :cond_31
    const-string v9, "accelerometer_rotation"

    .line 927
    invoke-static {v0, v9, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3b

    .line 929
    move v5, v7

    goto :goto_3c

    .line 930
    :cond_3b
    nop

    :goto_3c
    nop

    .line 931
    .local v5, "userRotationMode":I
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v6, v5, :cond_45

    .line 932
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 933
    const/4 v3, 0x1

    .line 934
    const/4 v1, 0x1

    .line 937
    :cond_45
    if-eqz v3, :cond_4a

    .line 938
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 940
    .end local v3  # "shouldUpdateOrientationListener":Z
    .end local v4  # "showRotationSuggestions":I
    .end local v5  # "userRotationMode":I
    .end local v8  # "userRotation":I
    :cond_4a
    monitor-exit v2

    .line 942
    return v1

    .line 940
    :catchall_4c
    move-exception v3

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4c

    throw v3
.end method


# virtual methods
.method configure(IIII)V
    .registers 13
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "shortSizeDp"  # I
    .param p4, "longSizeDp"  # I

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11100b1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p1, p2, :cond_23

    .line 255
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 256
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 258
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 259
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 261
    :cond_1e
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 262
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 265
    :cond_23
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 266
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 268
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 269
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_36

    .line 271
    :cond_32
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 272
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 278
    :goto_36
    const-string v1, "persist.demo.hdmirotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 279
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_4d

    .line 281
    :cond_49
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 283
    :goto_4d
    const-string v1, "persist.demo.hdmirotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 287
    const-string v1, "persist.demo.remoterotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 288
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_6a

    .line 290
    :cond_66
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .line 292
    :goto_6a
    const-string v1, "persist.demo.rotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 298
    .local v1, "isCar":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 300
    .local v2, "isTv":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v3, :cond_96

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez v3, :cond_96

    move v3, v4

    goto :goto_97

    :cond_96
    move v3, v5

    .line 302
    .local v3, "forceDesktopMode":Z
    :goto_97
    if-nez v1, :cond_a3

    if-nez v2, :cond_a3

    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v6, :cond_a3

    if-eqz v3, :cond_b2

    .line 307
    :cond_a3
    const-string v6, "config.override_forced_orient"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b2

    goto :goto_b3

    :cond_b2
    move v4, v5

    :goto_b3
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 308
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 948
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_d0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 958
    :cond_d0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 963
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method freezeRotation(I)V
    .registers 3
    .param p1, "rotation"  # I

    .line 390
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, p1

    :goto_b
    move p1, v0

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 392
    return-void
.end method

.method public getCurrentAppOrientation()I
    .registers 2

    .line 444
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getLandscapeRotation()I
    .registers 2

    .line 428
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0
.end method

.method public getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object v0
.end method

.method public getPortraitRotation()I
    .registers 2

    .line 436
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0
.end method

.method public getSeascapeRotation()I
    .registers 2

    .line 432
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0
.end method

.method public getUpsideDownRotation()I
    .registers 2

    .line 440
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0
.end method

.method public getUserRotation()I
    .registers 2

    .line 456
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0
.end method

.method public getUserRotationMode()I
    .registers 2

    .line 460
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return v0
.end method

.method isFixedToUserRotation()Z
    .registers 4

    .line 408
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    .line 414
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return v0

    .line 412
    :cond_b
    return v1

    .line 410
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method isRotationFrozen()Z
    .registers 6

    .line 399
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 400
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 403
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public onUserSwitch()V
    .registers 3

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz v0, :cond_8

    .line 893
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    .line 895
    :cond_8
    return-void
.end method

.method respectAppRequestedOrientation()Z
    .registers 2

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method restoreSettings(III)V
    .registers 8
    .param p1, "userRotationMode"  # I
    .param p2, "userRotation"  # I
    .param p3, "fixedToUserRotation"  # I

    .line 327
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_7

    .line 331
    return-void

    .line 333
    :cond_7
    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_2d

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2d

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 p1, 0x0

    .line 339
    :cond_2d
    if-ltz p2, :cond_32

    const/4 v2, 0x3

    if-le p2, v2, :cond_4f

    .line 340
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 p2, 0x0

    .line 344
    :cond_4f
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 345
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 346
    return-void
.end method

.method rotationForOrientation(II)I
    .registers 19
    .param p1, "orientation"  # I
    .param p2, "lastRotation"  # I

    .line 587
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotationForOrientation(orient="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", last="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "); user="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v5, v4, :cond_36

    .line 592
    const-string v5, "USER_ROTATION_LOCKED"

    goto :goto_38

    :cond_36
    const-string v5, ""

    :goto_38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    const-string v5, "WindowManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 597
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v3

    .line 600
    :cond_4d
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v5, -0x1

    if-eqz v3, :cond_57

    .line 601
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_58

    .line 602
    :cond_57
    move v3, v5

    :goto_58
    nop

    .line 603
    .local v3, "sensorRotation":I
    if-gez v3, :cond_5d

    .line 604
    move/from16 v3, p2

    .line 607
    :cond_5d
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v6

    .line 608
    .local v6, "lidState":I
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v7

    .line 609
    .local v7, "dockMode":I
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v8

    .line 610
    .local v8, "hdmiPlugged":Z
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 611
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v9

    .line 612
    .local v9, "carDockEnablesAccelerometer":Z
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 613
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v10

    .line 616
    .local v10, "deskDockEnablesAccelerometer":Z
    iget-boolean v11, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v13, 0xc

    const/16 v14, 0xb

    if-nez v11, :cond_87

    .line 619
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .local v5, "preferredRotation":I
    goto/16 :goto_156

    .line 620
    .end local v5  # "preferredRotation":I
    :cond_87
    if-ne v6, v4, :cond_91

    iget v11, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v11, :cond_91

    .line 622
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 623
    .end local v5  # "preferredRotation":I
    :cond_91
    const/4 v11, 0x2

    if-ne v7, v11, :cond_a2

    if-nez v9, :cond_9a

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v15, :cond_a2

    .line 628
    :cond_9a
    if-eqz v9, :cond_9e

    move v5, v3

    goto :goto_a0

    :cond_9e
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .restart local v5  # "preferredRotation":I
    :goto_a0
    goto/16 :goto_156

    .line 629
    .end local v5  # "preferredRotation":I
    :cond_a2
    const/4 v15, 0x4

    if-eq v7, v4, :cond_aa

    const/4 v12, 0x3

    if-eq v7, v12, :cond_aa

    if-ne v7, v15, :cond_b2

    :cond_aa
    if-nez v10, :cond_14f

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v12, :cond_b2

    goto/16 :goto_14f

    .line 637
    :cond_b2
    if-nez v8, :cond_b8

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v12, :cond_c0

    :cond_b8
    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v12, :cond_c0

    .line 640
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 641
    .end local v5  # "preferredRotation":I
    :cond_c0
    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v12, :cond_cc

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    if-le v12, v5, :cond_cc

    .line 643
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 644
    .end local v5  # "preferredRotation":I
    :cond_cc
    if-eqz v8, :cond_d8

    if-nez v7, :cond_d8

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v12, :cond_d8

    .line 650
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 651
    .end local v5  # "preferredRotation":I
    :cond_d8
    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v12, :cond_e0

    .line 654
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 655
    .end local v5  # "preferredRotation":I
    :cond_e0
    iget-object v12, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 660
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 661
    .end local v5  # "preferredRotation":I
    :cond_ec
    const/16 v12, 0xe

    if-ne v1, v12, :cond_f4

    .line 663
    move/from16 v5, p2

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 664
    .end local v5  # "preferredRotation":I
    :cond_f4
    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v12, :cond_fb

    .line 667
    const/4 v5, -0x1

    .restart local v5  # "preferredRotation":I
    goto/16 :goto_156

    .line 668
    .end local v5  # "preferredRotation":I
    :cond_fb
    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v4, 0xd

    const/16 v15, 0xa

    if-nez v12, :cond_10d

    if-eq v1, v11, :cond_126

    if-eq v1, v5, :cond_126

    if-eq v1, v14, :cond_126

    if-eq v1, v13, :cond_126

    if-eq v1, v4, :cond_126

    :cond_10d
    const/4 v5, 0x4

    if-eq v1, v5, :cond_126

    if-eq v1, v15, :cond_126

    const/4 v5, 0x6

    if-eq v1, v5, :cond_126

    const/4 v5, 0x7

    if-ne v1, v5, :cond_119

    goto :goto_126

    .line 695
    :cond_119
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_124

    const/4 v4, 0x5

    if-eq v1, v4, :cond_124

    .line 701
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .restart local v5  # "preferredRotation":I
    goto :goto_156

    .line 705
    .end local v5  # "preferredRotation":I
    :cond_124
    const/4 v5, -0x1

    .restart local v5  # "preferredRotation":I
    goto :goto_156

    .line 680
    .end local v5  # "preferredRotation":I
    :cond_126
    :goto_126
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-gez v5, :cond_13e

    .line 684
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x111000c

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 685
    const/4 v5, 0x1

    goto :goto_13c

    :cond_13b
    const/4 v5, 0x0

    :goto_13c
    iput v5, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 687
    :cond_13e
    if-ne v3, v11, :cond_14d

    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v11, 0x1

    if-eq v5, v11, :cond_14d

    if-eq v1, v15, :cond_14d

    if-ne v1, v4, :cond_14a

    goto :goto_14d

    .line 693
    :cond_14a
    move/from16 v5, p2

    .restart local v5  # "preferredRotation":I
    goto :goto_156

    .line 691
    .end local v5  # "preferredRotation":I
    :cond_14d
    :goto_14d
    move v5, v3

    .restart local v5  # "preferredRotation":I
    goto :goto_156

    .line 636
    .end local v5  # "preferredRotation":I
    :cond_14f
    :goto_14f
    if-eqz v10, :cond_153

    move v4, v3

    goto :goto_155

    :cond_153
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    :goto_155
    move v5, v4

    .line 708
    .restart local v5  # "preferredRotation":I
    :goto_156
    if-eqz v1, :cond_1a7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_19d

    if-eq v1, v14, :cond_18c

    if-eq v1, v13, :cond_17b

    packed-switch v1, :pswitch_data_1b2

    .line 762
    if-ltz v5, :cond_165

    .line 763
    return v5

    .line 765
    :cond_165
    const/4 v4, 0x0

    return v4

    .line 725
    :pswitch_167  #0x9
    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 726
    return v5

    .line 728
    :cond_16e
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v4

    .line 732
    :pswitch_171  #0x8
    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 733
    return v5

    .line 735
    :cond_178
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v4

    .line 751
    :cond_17b
    :pswitch_17b  #0x7
    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_182

    .line 752
    return v5

    .line 754
    :cond_182
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_189

    .line 755
    return v2

    .line 757
    :cond_189
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v4

    .line 740
    :cond_18c
    :pswitch_18c  #0x6
    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 741
    return v5

    .line 743
    :cond_193
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 744
    return v2

    .line 746
    :cond_19a
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v4

    .line 711
    :cond_19d
    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 712
    return v5

    .line 714
    :cond_1a4
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v4

    .line 718
    :cond_1a7
    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v4

    if-eqz v4, :cond_1ae

    .line 719
    return v5

    .line 721
    :cond_1ae
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v4

    nop

    :pswitch_data_1b2
    .packed-switch 0x6
        :pswitch_18c  #00000006
        :pswitch_17b  #00000007
        :pswitch_171  #00000008
        :pswitch_167  #00000009
    .end packed-switch
.end method

.method setCurrentOrientation(I)V
    .registers 3
    .param p1, "newOrientation"  # I

    .line 317
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_d

    .line 318
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_d

    .line 320
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 323
    :cond_d
    return-void
.end method

.method setFixedToUserRotation(I)V
    .registers 5
    .param p1, "fixedToUserRotation"  # I

    .line 349
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_5

    .line 350
    return-void

    .line 353
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 357
    return-void
.end method

.method setRotation(I)V
    .registers 3
    .param p1, "rotation"  # I

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_7

    .line 312
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 314
    :cond_7
    return-void
.end method

.method thawRotation()V
    .registers 3

    .line 395
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 396
    return-void
.end method

.method public updateOrientationListener()V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
