.class public abstract Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentIndex:I

.field protected mEntries:[Ljava/lang/String;

.field protected mInitialIndex:I

.field private mLabel:Landroid/widget/TextView;

.field private mLarger:Landroid/view/View;

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

.field private mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSmaller:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 208
    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 226
    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;IZ)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method private setPagerIndicatorContentDescription(I)V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f12108f

    .line 204
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreviewLayer(IZ)V
    .registers 7

    .line 192
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1e

    move v1, v2

    :cond_1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 197
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    .line 196
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    .line 199
    iput p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract getActivityLayoutResId()I
.end method

.method protected abstract getPreviewSampleResIds()[I
.end method

.method public synthetic lambda$onCreateView$0$PreviewSeekBarPreferenceFragment(Landroid/view/View;)V
    .registers 3

    .line 111
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_f

    .line 113
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_f
    return-void
.end method

.method public synthetic lambda$onCreateView$1$PreviewSeekBarPreferenceFragment(Landroid/view/View;)V
    .registers 3

    .line 119
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 121
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getActivityLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p3, 0x7f0a01c3

    .line 98
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    .line 103
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const v2, 0x7f0a0642

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    .line 106
    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    const p3, 0x7f0a0692

    .line 109
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    .line 110
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v2, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$nsTIuQKr0QeKuykgH3GSjjQwy0U;

    invoke-direct {v2, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$nsTIuQKr0QeKuykgH3GSjjQwy0U;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a03a1

    .line 117
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    .line 118
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v2, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$YZVIWVH43LF5m8117asT1G96GFU;

    invoke-direct {v2, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$YZVIWVH43LF5m8117asT1G96GFU;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_77

    .line 128
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 131
    :cond_77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_8b

    move v3, v0

    goto :goto_8c

    :cond_8b
    move v3, v1

    .line 134
    :goto_8c
    iget-object v4, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/content/res/Configuration;

    move v5, v1

    .line 135
    :goto_92
    iget-object v6, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_a0

    .line 136
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 139
    :cond_a0
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object v2

    const v5, 0x7f0a057c

    .line 140
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    iput-object v5, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 141
    new-instance v5, Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-direct {v5, p3, v3, v2, v4}, Lcom/android/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    .line 143
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-virtual {p3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 144
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_c4

    array-length v3, v2

    sub-int/2addr v3, v0

    goto :goto_c5

    :cond_c4
    move v3, v1

    :goto_c5
    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 145
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p3, 0x7f0a051e

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 148
    array-length p1, v2

    if-le p1, v0, :cond_f1

    .line 149
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_f8

    .line 153
    :cond_f1
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :goto_f8
    iget p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-object p2
.end method

.method public onStart()V
    .registers 4

    .line 162
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    new-instance v1, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 171
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 172
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
