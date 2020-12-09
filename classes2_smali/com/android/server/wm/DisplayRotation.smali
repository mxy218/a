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

.field private mUserRotationAngles:I

.field private mUserRotationMode:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 140
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 97
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 98
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 100
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 132
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 148
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 149
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 150
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 151
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 152
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 153
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 154
    iget-boolean p1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 156
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x11100d1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 158
    const p1, 0x10e0066

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 160
    const p1, 0x10e002a

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 162
    const p1, 0x10e0043

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 164
    const p1, 0x10e00b9

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 167
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p1, :cond_7a

    .line 168
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 169
    new-instance p3, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, p4, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 170
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 171
    new-instance p2, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 172
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->observe()V

    .line 174
    :cond_7a
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayRotation;IZ)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result p0

    return p0
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .registers 2

    .line 822
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 830
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 828
    :cond_d
    const-string p0, "true"

    return-object p0

    .line 826
    :cond_10
    const-string p0, "false"

    return-object p0

    .line 824
    :cond_13
    const-string p0, "unknown"

    return-object p0
.end method

.method private isAnyPortrait(I)Z
    .registers 3

    .line 717
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3

    .line 713
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private isRotationChoicePossible(I)Z
    .registers 8

    .line 748
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 754
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 755
    return v2

    .line 758
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 759
    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v0, :cond_1b

    .line 760
    return v2

    .line 763
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 765
    const/4 v3, 0x2

    if-ne v0, v3, :cond_25

    .line 766
    return v2

    .line 769
    :cond_25
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 770
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    .line 771
    if-eq v0, v1, :cond_33

    const/4 v5, 0x3

    if-eq v0, v5, :cond_33

    const/4 v5, 0x4

    if-ne v0, v5, :cond_36

    :cond_33
    if-nez v4, :cond_36

    .line 775
    return v2

    .line 778
    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v4

    .line 779
    if-eqz v4, :cond_43

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v5, :cond_43

    .line 780
    return v2

    .line 782
    :cond_43
    if-eqz v4, :cond_4c

    if-nez v0, :cond_4c

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v0, :cond_4c

    .line 784
    return v2

    .line 786
    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v0, :cond_51

    .line 787
    return v2

    .line 789
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 790
    return v2

    .line 792
    :cond_5a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v0, :cond_5f

    .line 793
    return v2

    .line 797
    :cond_5f
    const/4 v0, -0x1

    if-eq p1, v0, :cond_68

    if-eq p1, v3, :cond_68

    packed-switch p1, :pswitch_data_6a

    .line 808
    return v2

    .line 804
    :cond_68
    :pswitch_68  #0xb, 0xc, 0xd
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0xb
        :pswitch_68  #0000000b
        :pswitch_68  #0000000c
        :pswitch_68  #0000000d
    .end packed-switch
.end method

.method private isValidRotationChoice(I)Z
    .registers 6

    .line 722
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    packed-switch v0, :pswitch_data_28

    .line 743
    return v3

    .line 725
    :pswitch_e  #0xd
    if-ltz p1, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    return v2

    .line 731
    :pswitch_13  #0xc
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    return v2

    .line 735
    :pswitch_1a  #0xb
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p1

    return p1

    .line 740
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

    .line 473
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 476
    return v1

    .line 479
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    .line 480
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1c

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1d

    .line 486
    :cond_1c
    return v3

    .line 490
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 491
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3d

    :cond_2e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 493
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eq v0, v3, :cond_3d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3d

    if-ne v0, v2, :cond_3e

    .line 499
    :cond_3d
    return v3

    .line 502
    :cond_3e
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v3, :cond_4c

    .line 514
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v0, v3, :cond_4b

    move v1, v3

    :cond_4b
    return v1

    .line 517
    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return v0
.end method

.method private readRotation(I)I
    .registers 3

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_21

    .line 179
    if-eqz p1, :cond_1f

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1d

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_19

    .line 191
    goto :goto_22

    .line 187
    :cond_19
    const/4 p1, 0x3

    return p1

    .line 185
    :cond_1b
    const/4 p1, 0x2

    return p1

    .line 183
    :cond_1d
    const/4 p1, 0x1

    return p1

    .line 181
    :cond_1f
    const/4 p1, 0x0

    return p1

    .line 189
    :catch_21
    move-exception p1

    .line 192
    :goto_22
    const/4 p1, -0x1

    return p1
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .registers 4

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 814
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 816
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_15

    .line 817
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 819
    :cond_15
    return-void
.end method

.method private setUserRotation(II)V
    .registers 8

    .line 303
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    if-ne p1, v2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    .line 308
    :goto_10
    const/4 p1, -0x2

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 310
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 312
    return-void

    .line 315
    :cond_1c
    nop

    .line 316
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v0, p1, :cond_25

    .line 317
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 318
    move v0, v2

    goto :goto_26

    .line 316
    :cond_25
    move v0, v1

    .line 320
    :goto_26
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v3, p2, :cond_2d

    .line 321
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 322
    move v0, v2

    .line 324
    :cond_2d
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    .line 326
    if-eqz v0, :cond_3b

    .line 327
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 330
    :cond_3b
    return-void
.end method

.method private updateOrientationListenerLw()V
    .registers 6

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4f

    .line 429
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    .line 430
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    .line 432
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v3

    .line 442
    nop

    .line 446
    const/4 v4, 0x1

    if-eqz v0, :cond_40

    if-eqz v1, :cond_40

    if-eqz v2, :cond_40

    if-eqz v3, :cond_40

    .line 447
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 448
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v1, :cond_41

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable(Z)V

    goto :goto_41

    .line 462
    :cond_40
    move v0, v4

    :cond_41
    :goto_41
    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v0, :cond_4e

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    .line 465
    :cond_4e
    return-void

    .line 426
    :cond_4f
    :goto_4f
    return-void
.end method

.method private updateSettings()Z
    .registers 10

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 843
    nop

    .line 845
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    nop

    .line 850
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_16

    .line 851
    move v2, v4

    goto :goto_1c

    .line 852
    :cond_16
    const-string v2, "show_rotation_suggestions"

    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 856
    :goto_1c
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v6, v2, :cond_24

    .line 857
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 858
    move v2, v5

    goto :goto_25

    .line 856
    :cond_24
    move v2, v4

    .line 862
    :goto_25
    const-string v6, "user_rotation"

    invoke-static {v0, v6, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 865
    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v7, v6, :cond_33

    .line 866
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 867
    move v6, v5

    goto :goto_34

    .line 865
    :cond_33
    move v6, v4

    .line 870
    :goto_34
    const-string v7, "accelerometer_rotation_angles"

    const/4 v8, -0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 872
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    if-eq v8, v7, :cond_42

    .line 873
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    .line 874
    move v6, v5

    .line 878
    :cond_42
    const-string v7, "accelerometer_rotation"

    .line 877
    invoke-static {v0, v7, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4b

    .line 879
    goto :goto_4c

    .line 880
    :cond_4b
    move v4, v5

    .line 881
    :goto_4c
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v0, v4, :cond_55

    .line 882
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 883
    nop

    .line 884
    move v2, v5

    goto :goto_56

    .line 881
    :cond_55
    move v5, v6

    .line 887
    :goto_56
    if-eqz v2, :cond_5b

    .line 888
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 890
    :cond_5b
    monitor-exit v1

    .line 892
    return v5

    .line 890
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_5d

    throw v0
.end method


# virtual methods
.method configure(IIII)V
    .registers 9

    .line 196
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 197
    const p4, 0x11100b6

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p1, p2, :cond_23

    .line 198
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 199
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 200
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 201
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 202
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 204
    :cond_1e
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 205
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 208
    :cond_23
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 209
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 210
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 211
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 212
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_36

    .line 214
    :cond_32
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 215
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 221
    :goto_36
    const-string p1, "persist.demo.hdmirotation"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "portrait"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 222
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_4d

    .line 224
    :cond_49
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 226
    :goto_4d
    const-string p1, "persist.demo.hdmirotationlock"

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 230
    const-string p1, "persist.demo.remoterotation"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 231
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_6a

    .line 233
    :cond_66
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .line 235
    :goto_6a
    const-string p1, "persist.demo.rotationlock"

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 238
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 241
    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.software.leanback"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    .line 243
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p3, p3, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz p3, :cond_96

    iget-boolean p3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez p3, :cond_96

    move p3, v2

    goto :goto_97

    :cond_96
    move p3, v3

    .line 245
    :goto_97
    if-nez p1, :cond_a3

    if-nez p2, :cond_a3

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p1, :cond_a3

    if-eqz p3, :cond_b2

    .line 250
    :cond_a3
    const-string p1, "config.override_forced_orient"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto :goto_b3

    :cond_b2
    move v2, v3

    :goto_b3
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 251
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 898
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
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

    .line 900
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

    .line 901
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

    .line 902
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

    .line 904
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

    .line 905
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_d0

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 908
    :cond_d0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 910
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

    .line 911
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

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 913
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
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

    .line 915
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

    .line 917
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

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
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

    .line 920
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

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mFixedToUserRotation="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method freezeRotation(I)V
    .registers 3

    .line 333
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p1

    .line 334
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 335
    return-void
.end method

.method public getCurrentAppOrientation()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getLandscapeRotation()I
    .registers 2

    .line 371
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0
.end method

.method public getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object v0
.end method

.method public getPortraitRotation()I
    .registers 2

    .line 379
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0
.end method

.method public getSeascapeRotation()I
    .registers 2

    .line 375
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0
.end method

.method public getUpsideDownRotation()I
    .registers 2

    .line 383
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0
.end method

.method public getUserRotation()I
    .registers 2

    .line 399
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0
.end method

.method public getUserRotationMode()I
    .registers 2

    .line 403
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return v0
.end method

.method isFixedToUserRotation()Z
    .registers 4

    .line 351
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    .line 357
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return v0

    .line 355
    :cond_b
    return v1

    .line 353
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method isRotationFrozen()Z
    .registers 6

    .line 342
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 343
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 346
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

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz v0, :cond_8

    .line 836
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    .line 838
    :cond_8
    return-void
.end method

.method respectAppRequestedOrientation()Z
    .registers 2

    .line 367
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method restoreSettings(III)V
    .registers 8

    .line 270
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 273
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p3, :cond_7

    .line 274
    return-void

    .line 276
    :cond_7
    const/4 p3, 0x0

    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_2e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2e

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move p1, p3

    .line 282
    :cond_2e
    if-ltz p2, :cond_33

    const/4 v2, 0x3

    if-le p2, v2, :cond_50

    .line 283
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move p2, p3

    .line 287
    :cond_50
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 288
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 289
    return-void
.end method

.method rotationForOrientation(II)I
    .registers 15

    .line 539
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 540
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return p1

    .line 543
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    .line 544
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v0

    goto :goto_14

    .line 545
    :cond_13
    move v0, v1

    .line 546
    :goto_14
    if-gez v0, :cond_17

    .line 547
    move v0, p2

    .line 550
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v2

    .line 551
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v3

    .line 552
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v4

    .line 553
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 554
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v5

    .line 555
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 556
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v6

    .line 559
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v7, :cond_43

    .line 562
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_103

    .line 563
    :cond_43
    if-ne v2, v11, :cond_4c

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v2, :cond_4c

    .line 565
    move v0, v2

    goto/16 :goto_103

    .line 566
    :cond_4c
    const/4 v2, 0x2

    if-ne v3, v2, :cond_5d

    if-nez v5, :cond_55

    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v7, :cond_5d

    .line 571
    :cond_55
    if-eqz v5, :cond_59

    goto/16 :goto_103

    :cond_59
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    goto/16 :goto_103

    .line 572
    :cond_5d
    const/4 v5, 0x4

    if-eq v3, v11, :cond_65

    const/4 v7, 0x3

    if-eq v3, v7, :cond_65

    if-ne v3, v5, :cond_6d

    :cond_65
    if-nez v6, :cond_fe

    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v7, :cond_6d

    goto/16 :goto_fe

    .line 580
    :cond_6d
    if-eqz v4, :cond_77

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v6, :cond_77

    .line 583
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto/16 :goto_103

    .line 584
    :cond_77
    if-eqz v4, :cond_82

    if-nez v3, :cond_82

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v3, :cond_82

    .line 590
    move v0, v3

    goto/16 :goto_103

    .line 591
    :cond_82
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v3, :cond_8a

    .line 594
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto/16 :goto_103

    .line 595
    :cond_8a
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 600
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto/16 :goto_103

    .line 601
    :cond_96
    const/16 v3, 0xe

    if-ne p1, v3, :cond_9d

    .line 603
    move v0, p2

    goto/16 :goto_103

    .line 604
    :cond_9d
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v3, :cond_a4

    .line 607
    move v0, v1

    goto/16 :goto_103

    .line 608
    :cond_a4
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v4, 0xd

    const/16 v6, 0xa

    if-nez v3, :cond_b6

    if-eq p1, v2, :cond_cd

    if-eq p1, v1, :cond_cd

    if-eq p1, v9, :cond_cd

    if-eq p1, v8, :cond_cd

    if-eq p1, v4, :cond_cd

    :cond_b6
    if-eq p1, v5, :cond_cd

    if-eq p1, v6, :cond_cd

    const/4 v2, 0x6

    if-eq p1, v2, :cond_cd

    const/4 v2, 0x7

    if-ne p1, v2, :cond_c1

    goto :goto_cd

    .line 638
    :cond_c1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v11, :cond_cb

    const/4 v0, 0x5

    if-eq p1, v0, :cond_cb

    .line 644
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_103

    .line 648
    :cond_cb
    move v0, v1

    goto :goto_103

    .line 620
    :cond_cd
    :goto_cd
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-gez v1, :cond_e5

    .line 624
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 625
    move v1, v11

    goto :goto_e3

    :cond_e2
    move v1, v10

    :goto_e3
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 627
    :cond_e5
    nop

    .line 628
    if-eq p1, v6, :cond_f8

    if-eq p1, v4, :cond_f8

    .line 630
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-eqz v2, :cond_f2

    move v2, v11

    goto :goto_f3

    :cond_f2
    move v2, v10

    :goto_f3
    invoke-static {v0, v1, v2}, Lcom/android/internal/view/RotationPolicy;->isRotationAllowed(IIZ)Z

    move-result v1

    goto :goto_f9

    .line 633
    :cond_f8
    move v1, v11

    :goto_f9
    if-eqz v1, :cond_fc

    .line 634
    goto :goto_fd

    .line 636
    :cond_fc
    move v0, p2

    .line 638
    :goto_fd
    goto :goto_103

    .line 579
    :cond_fe
    :goto_fe
    if-eqz v6, :cond_101

    goto :goto_103

    :cond_101
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 651
    :goto_103
    if-eqz p1, :cond_152

    if-eq p1, v11, :cond_148

    if-eq p1, v9, :cond_137

    if-eq p1, v8, :cond_126

    packed-switch p1, :pswitch_data_15c

    .line 705
    if-ltz v0, :cond_111

    .line 706
    return v0

    .line 708
    :cond_111
    return v10

    .line 668
    :pswitch_112  #0x9
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_119

    .line 669
    return v0

    .line 671
    :cond_119
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return p1

    .line 675
    :pswitch_11c  #0x8
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 676
    return v0

    .line 678
    :cond_123
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return p1

    .line 694
    :cond_126
    :pswitch_126  #0x7
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 695
    return v0

    .line 697
    :cond_12d
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_134

    .line 698
    return p2

    .line 700
    :cond_134
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return p1

    .line 683
    :cond_137
    :pswitch_137  #0x6
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_13e

    .line 684
    return v0

    .line 686
    :cond_13e
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 687
    return p2

    .line 689
    :cond_145
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return p1

    .line 654
    :cond_148
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 655
    return v0

    .line 657
    :cond_14f
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return p1

    .line 661
    :cond_152
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 662
    return v0

    .line 664
    :cond_159
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return p1

    :pswitch_data_15c
    .packed-switch 0x6
        :pswitch_137  #00000006
        :pswitch_126  #00000007
        :pswitch_11c  #00000008
        :pswitch_112  #00000009
    .end packed-switch
.end method

.method setCurrentOrientation(I)V
    .registers 3

    .line 260
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_d

    .line 261
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 262
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p1, :cond_d

    .line 263
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 266
    :cond_d
    return-void
.end method

.method setFixedToUserRotation(I)V
    .registers 4

    .line 292
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_5

    .line 293
    return-void

    .line 296
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 298
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 300
    return-void
.end method

.method setRotation(I)V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 257
    :cond_7
    return-void
.end method

.method thawRotation()V
    .registers 3

    .line 338
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 339
    return-void
.end method

.method public updateOrientationListener()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
