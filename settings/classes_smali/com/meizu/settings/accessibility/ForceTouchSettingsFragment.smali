.class public Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;
.super Landroid/app/Fragment;
.source "ForceTouchSettingsFragment.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ForceTouchSettingsFragment"


# instance fields
.field private mForceTouchLevelTexts:[Ljava/lang/CharSequence;

.field private mForceTouchLevelUri:Landroid/net/Uri;

.field private mForceTouchRoot:Landroid/widget/LinearLayout;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSeekBar:Lcom/meizu/common/widget/EnhanceSeekBar;

.field private mSwitchUri:Landroid/net/Uri;

.field private mTestImage:Landroid/widget/ImageView;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "mz_force_touch_switch"

    .line 55
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mSwitchUri:Landroid/net/Uri;

    const-string v0, "mz_force_touch_level_index"

    .line 57
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchLevelUri:Landroid/net/Uri;

    .line 63
    new-instance v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$1;-><init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mObserver:Landroid/database/ContentObserver;

    .line 74
    new-instance v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$2;-><init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->updateProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->updateEnableState()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;I)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->setLevelByProgress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/widget/LinearLayout;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mTestImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)Landroid/app/FragmentManager;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mFragmentManager:Landroid/app/FragmentManager;

    return-object p0
.end method

.method private getProgressByLevel()I
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_force_touch_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 134
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_force_touch_level_index"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1e

    if-eq p0, v0, :cond_1d

    return v1

    :cond_1d
    return v2

    :cond_1e
    return v0

    :cond_1f
    const/4 p0, 0x3

    return p0
.end method

.method private initForceTouch()V
    .registers 4

    .line 184
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-direct {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;-><init>()V

    const/4 v1, 0x1

    .line 185
    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    .line 186
    iget-object v1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchRoot:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment$3;-><init>(Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;)V

    invoke-static {v1, v0, v2}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper;->enablePeekAndPop(Landroid/view/View;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;)V

    return-void
.end method

.method private setLevelByProgress(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_14

    if-eq p1, v3, :cond_12

    if-eq p1, v1, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_16

    move v0, v2

    move v3, v0

    goto :goto_16

    :cond_10
    move v0, v3

    goto :goto_16

    :cond_12
    move v0, v1

    goto :goto_16

    :cond_14
    move v3, v0

    move v0, v2

    :cond_16
    :goto_16
    if-eq v3, v2, :cond_1f

    .line 174
    iget-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_force_touch_switch"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1f
    if-eq v0, v2, :cond_28

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_force_touch_level_index"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_28
    return-void
.end method

.method private updateEnableState()V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_force_touch_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    .line 293
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mTestImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 295
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mTestImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    const/16 v0, 0xff

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x55

    :goto_1d
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_20
    return-void
.end method

.method private updateProgress()V
    .registers 2

    .line 285
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->getProgressByLevel()I

    move-result v0

    .line 286
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mSeekBar:Lcom/meizu/common/widget/EnhanceSeekBar;

    if-eqz p0, :cond_b

    .line 287
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 101
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03009a

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchLevelTexts:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d01d8

    const/4 p3, 0x0

    .line 113
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .registers 2

    .line 301
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 273
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mSwitchUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchLevelUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->updateProgress()V

    .line 279
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->updateEnableState()V

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mSeekBar:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V

    return-void
.end method

.method public onStop()V
    .registers 6

    .line 307
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "mz_force_touch_switch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 310
    iget-object v3, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_force_touch_level_index"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 311
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "force_touch_switch_click"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "force_touch_level_click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    sget-object v1, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "force_touch_settings"

    invoke-virtual {p0, v2, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a02d1

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchRoot:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02d3

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mTestImage:Landroid/widget/ImageView;

    const p2, 0x7f0a02d2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/EnhanceSeekBar;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mSeekBar:Lcom/meizu/common/widget/EnhanceSeekBar;

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mSeekBar:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object p2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->mForceTouchLevelTexts:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->initForceTouch()V

    return-void
.end method
