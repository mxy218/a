.class public Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;
.super Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomAndFontSizeSettings.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCommitted:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentScreenZoomingIndex:I

.field private mDefaultDensity:I

.field private mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

.field private mFontSizeValues:[Ljava/lang/String;

.field private mIsFontSizeSeekbarDragging:Z

.field private mIsScreenZoomSeekbarDragging:Z

.field private mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

.field private mSeekbarListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 176
    new-instance v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$1;

    invoke-direct {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurrentScreenZoomingIndex:I

    .line 193
    new-instance v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;-><init>(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mSeekbarListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mIsScreenZoomSeekbarDragging:Z

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mIsScreenZoomSeekbarDragging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mIsFontSizeSeekbarDragging:Z

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mIsFontSizeSeekbarDragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurrentScreenZoomingIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurrentScreenZoomingIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)[Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;F)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->setFontSize(F)V

    return-void
.end method

.method private getFontSize()F
    .registers 4

    const-string v0, "ScreenZoomAndFontSizeSettings"

    .line 129
    :try_start_2
    iget-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 130
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    const-string p0, "Unable to retrieve font size"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000  # 1.0f

    .line 134
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFontScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private initFontSize()V
    .registers 4

    .line 116
    invoke-direct {p0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->getFontSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeValues:[Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeValues:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    .line 120
    iget v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_34

    :cond_26
    const/4 v0, 0x1

    .line 121
    iput v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    .line 122
    iget-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeValues:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->setFontSize(F)V

    :cond_34
    return-void
.end method

.method private reportSizeConfigure()V
    .registers 6

    .line 290
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "display_size"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "font_size"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "display_font_size"

    const-string v2, "ScreenZoomAndFontSizeSettings"

    .line 294
    invoke-virtual {v0, p0, v2, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private setFontSize(F)V
    .registers 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iput p1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 142
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    const-string p0, "ScreenZoomAndFontSizeSettings"

    const-string p1, "Unable to save font size"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method


# virtual methods
.method protected commit()V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mValues:[I

    iget v1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    aget v0, v0, v1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit...mCurrentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", densityDpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mValues:[I

    iget v3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDefaultDensity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mDefaultDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", commited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCommitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenZoomAndFontSizeSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mCommitted:Z

    .line 168
    iget p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mDefaultDensity:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_4c

    .line 169
    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    goto :goto_4f

    .line 171
    :cond_4c
    invoke-static {v1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :goto_4f
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .registers 4

    .line 151
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 152
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mValues:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected onAnimationEnd()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->commit()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 72
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02e4

    .line 74
    iput p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mActivityLayoutResId:I

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 77
    fill-array-data p1, :array_68

    iput-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    .line 82
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_42

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 90
    iput-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mValues:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mScreenZoomEntries:[Ljava/lang/String;

    .line 92
    iput v2, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mInitialScreenZoomIndex:I

    .line 93
    iput p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mDefaultDensity:I

    goto :goto_56

    .line 95
    :cond_42
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mValues:[I

    .line 96
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mScreenZoomEntries:[Ljava/lang/String;

    .line 97
    iput v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mInitialScreenZoomIndex:I

    .line 98
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mDefaultDensity:I

    .line 101
    :goto_56
    invoke-direct {p0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->initFontSize()V

    .line 103
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 104
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_66
    return-void

    nop

    :array_68
    .array-data 4
        0x7f0d02e6
        0x7f0d02e8
        0x7f0d02e5
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0615

    .line 261
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/EnhanceSeekBar;

    iput-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    .line 262
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0300f3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 263
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object p3, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mSeekbarListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p2, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V

    .line 265
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    invoke-virtual {p2, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    .line 266
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    const p2, 0x7f0a02cc

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/EnhanceSeekBar;

    iput-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    .line 269
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 270
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mSeekbarListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V

    .line 271
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    invoke-virtual {p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    .line 272
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p2, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 275
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    .line 276
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 p2, 0x1

    .line 277
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setConstantSize(Z)V

    return-object p1
.end method

.method public onStop()V
    .registers 1

    .line 284
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 286
    invoke-direct {p0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->reportSizeConfigure()V

    return-void
.end method

.method protected onViewInflateFinished()V
    .registers 3

    .line 110
    invoke-super {p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->onViewInflateFinished()V

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mFontSizeSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 112
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->mScreenZoomSeekbar:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    return-void
.end method
