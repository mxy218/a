.class public abstract Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# instance fields
.field protected mActivityLayoutResId:I

.field protected mCurrentFontSizeIndex:I

.field protected mCurrentScreenZoomIndex:I

.field private mFlymePageIndicator:Lcom/meizu/common/widget/PagerIndicator;

.field protected mInitialScreenZoomIndex:I

.field private mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field protected mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

.field protected mPreviewSampleResIds:[I

.field protected mScreenZoomEntries:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$3;-><init>(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/meizu/common/widget/PagerIndicator;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mFlymePageIndicator:Lcom/meizu/common/widget/PagerIndicator;

    return-object p0
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract onAnimationEnd()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    iget v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mActivityLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mScreenZoomEntries:[Ljava/lang/String;

    array-length v0, v0

    new-array v5, v0, [Landroid/content/res/Configuration;

    move v0, v1

    .line 73
    :goto_2c
    iget-object v2, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mScreenZoomEntries:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3a

    .line 74
    invoke-virtual {p0, p3, v0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v2

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3a
    const p3, 0x7f0a057c

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 78
    new-instance p3, Lcom/meizu/settings/display/PreviewPagerAdapter;

    iget-object v4, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    iget v6, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mInitialScreenZoomIndex:I

    iget v7, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    new-instance v8, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v8, p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)V

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/meizu/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;[I[Landroid/content/res/Configuration;IILcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;)V

    iput-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

    .line 88
    iget-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

    new-instance v0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v0}, Lcom/meizu/settings/display/PreviewPagerAdapter;->setAnimationEndListener(Ljava/lang/Runnable;)V

    .line 95
    iget-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 96
    iget-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 97
    iget-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p3, 0x7f0a02c7

    .line 100
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/PagerIndicator;

    iput-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mFlymePageIndicator:Lcom/meizu/common/widget/PagerIndicator;

    .line 101
    iget-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length p3, p1

    const/4 v0, 0x1

    if-le p3, v0, :cond_92

    .line 102
    iget-object p3, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mFlymePageIndicator:Lcom/meizu/common/widget/PagerIndicator;

    array-length p1, p1

    invoke-virtual {p3, p1}, Lcom/meizu/common/widget/PagerIndicator;->setPagerCount(I)V

    .line 103
    iget-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mFlymePageIndicator:Lcom/meizu/common/widget/PagerIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_99

    .line 105
    :cond_92
    iget-object p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mFlymePageIndicator:Lcom/meizu/common/widget/PagerIndicator;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_99
    iget p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mInitialScreenZoomIndex:I

    iput p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    return-object p2
.end method

.method protected onViewInflateFinished()V
    .registers 1

    return-void
.end method

.method protected declared-synchronized setPreviewLayer(IIZ)V
    .registers 11

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/meizu/settings/display/PreviewPagerAdapter;

    iget v2, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    iget-object v1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 129
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    iget v5, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    move v1, p2

    move v4, p1

    move v6, p3

    .line 128
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/settings/display/PreviewPagerAdapter;->setPreviewLayer(IIIIIZ)V

    .line 131
    iput p2, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    .line 132
    iput p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 133
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
