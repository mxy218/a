.class public Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDarkModeIconColorSingleTone:I

.field private mIconTint:I

.field private mLightModeIconColorSingleTone:I

.field private final mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTintArea:Landroid/graphics/Rect;

.field private final mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 221
    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 70
    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkModeIconColorSingleTone:I

    .line 71
    sget v0, Lcom/android/systemui/R$color;->light_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "flymelab_flyme_night_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/os/Handler;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v0, 0x0

    .line 87
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mState:I

    return p1
.end method

.method private applyIconTint()V
    .registers 7

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 189
    :cond_1a
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isInNightMode()Z

    move-result v0

    const-string v1, "DarkIconDispatcherImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isFlymeDarkProcessingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 191
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    const-string v3, "StatusBarColor: Flyme dark process"

    .line 192
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 193
    :goto_33
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    int-to-float v5, v2

    invoke-interface {v3, v4, v5, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_4c
    return-void

    .line 200
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusBarColor: mTintArea = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDarkIntensity = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mIconTint = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_93

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v0, v1, v3, v4}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_93
    return-void
.end method


# virtual methods
.method public addDarkReceiver(Landroid/widget/ImageView;)V
    .registers 7

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$ok51JmL9mmr4FNW4V8J0PDfHR6I;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$ok51JmL9mmr4FNW4V8J0PDfHR6I;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/widget/ImageView;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isInNightMode()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isFlymeDarkProcessingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 117
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    const/4 v1, 0x0

    move v2, v1

    .line 118
    :goto_1c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 119
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    int-to-float v4, v1

    invoke-interface {v0, v3, v4, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    return-void

    .line 124
    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v0, p1, v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
    .registers 7

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isInNightMode()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isFlymeDarkProcessingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 100
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    const/4 v1, 0x0

    move v2, v1

    .line 101
    :goto_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 102
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    int-to-float v4, v1

    invoke-interface {p1, v3, v4, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_28
    return-void

    .line 107
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public applyDark(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
    .registers 8

    .line 137
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isInNightMode()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->isFlymeDarkProcessingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    const-string v1, "DarkIconDispatcherImpl"

    const-string v2, "StatusBarColor: Flyme dark process"

    .line 140
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 141
    :goto_19
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    int-to-float v5, v1

    invoke-interface {v3, v4, v5, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_32
    return-void

    .line 147
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public applyDarkIntensity(F)V
    .registers 5

    .line 170
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    const/4 v1, 0x0

    .line 171
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_19

    const/high16 v0, -0x67000000

    goto :goto_1b

    :cond_19
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkModeIconColorSingleTone:I

    :goto_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    invoke-virtual {v1, p1, v2, v0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "DarkIconDispatcher: "

    .line 211
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIconTint: 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDarkIntensity: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "f"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTintArea: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getTintAnimationDuration()I
    .registers 1

    const/16 p0, 0x78

    return p0
.end method

.method public getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object p0
.end method

.method public synthetic lambda$addDarkReceiver$0$DarkIconDispatcherImpl(Landroid/widget/ImageView;Landroid/graphics/Rect;FI)V
    .registers 5

    .line 111
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 112
    invoke-static {p2, p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public removeDarkReceiver(Landroid/widget/ImageView;)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIconsDarkArea(Landroid/graphics/Rect;)V
    .registers 3

    if-nez p1, :cond_b

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez p1, :cond_13

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_18

    .line 163
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    :goto_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    return-void
.end method
