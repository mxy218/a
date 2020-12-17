.class public Lcom/meizu/settings/display/BlueLightReductionPreference;
.super Landroid/preference/Preference;
.source "BlueLightReductionPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mBlueligthReductionEnabled:Z

.field private mCurrentModeIdBaseline:I

.field private mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

.field private mEndIcon:Landroid/widget/ImageView;

.field private mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStartIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "BlueLightReductionPreference"

    .line 16
    iput-object p2, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->TAG:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    .line 66
    iget-object p2, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p2}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mBlueligthReductionEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/BlueLightReductionPreference;)Landroid/widget/SeekBar;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/BlueLightReductionPreference;)Lcom/meizu/settings/display/QcomDisplayWrapper;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a06b3

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 116
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a025b

    if-ne p1, v1, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    :goto_1d
    const/16 p1, 0x3b

    .line 120
    invoke-static {p1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz v0, :cond_42

    if-gt v0, p1, :cond_42

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->saveEyeProtectLevel(I)V

    .line 126
    iget-boolean p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mBlueligthReductionEnabled:Z

    if-eqz p1, :cond_42

    .line 127
    iget p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    add-int/2addr v0, p1

    .line 128
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 129
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    :cond_42
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 28
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01c4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0643

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 31
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3b

    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 33
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 34
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 35
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0a06b3

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mStartIcon:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mStartIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a025b

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mEndIcon:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mEndIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-eqz p3, :cond_a

    .line 74
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    :cond_a
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->saveEyeProtectLevel(I)V

    .line 85
    iget-boolean v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mBlueligthReductionEnabled:Z

    if-nez v0, :cond_2d

    .line 86
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 87
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    .line 88
    iget-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedColorBalance()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setColorBalance(I)Z

    .line 89
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedColorBalance()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultColorBalance(I)V

    goto :goto_3e

    .line 91
    :cond_2d
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    add-int/2addr p1, v0

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 93
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    :goto_3e
    return-void
.end method

.method public registerDisplayConnnectListener()V
    .registers 2

    .line 46
    new-instance v0, Lcom/meizu/settings/display/BlueLightReductionPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/BlueLightReductionPreference$1;-><init>(Lcom/meizu/settings/display/BlueLightReductionPreference;)V

    iput-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->registerDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    return-void
.end method

.method public setBlueligthReductionEnabled(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mBlueligthReductionEnabled:Z

    return-void
.end method

.method public unregisterDisplayConnnectListener()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->unregisterDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    return-void
.end method

.method public updateCurrentModeIdBaseline()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    .line 103
    iget v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mCurrentModeIdBaseline:I

    .line 104
    iget-boolean v1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mBlueligthReductionEnabled:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_17

    .line 105
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_17
    iget-object v1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    return-void
.end method
