.class public Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;
.super Lflyme/support/v7/app/AppCompatActivity;
.source "NavigationBarDetailSimpleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$ViewPagerTransformer;
    }
.end annotation


# instance fields
.field private mActionBar:Lflyme/support/v7/app/ActionBar;

.field private mDemoLayout:Landroid/widget/FrameLayout;

.field mIdicator:Landroid/widget/LinearLayout;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSubtitleText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mVideoView:Lcom/meizu/settings/gesture/TextureVideoView;

.field mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;

.field pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatActivity;-><init>()V

    .line 108
    new-instance v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;-><init>(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Landroid/widget/FrameLayout;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mDemoLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mDemoLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Landroid/widget/TextView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mTitleText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mTitleText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Landroid/widget/TextView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mSubtitleText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mSubtitleText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Lcom/meizu/settings/gesture/TextureVideoView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mVideoView:Lcom/meizu/settings/gesture/TextureVideoView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Lcom/meizu/settings/gesture/TextureVideoView;)Lcom/meizu/settings/gesture/TextureVideoView;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mVideoView:Lcom/meizu/settings/gesture/TextureVideoView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;ILandroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meizu/settings/gesture/TextureVideoView;)V
    .registers 6

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->setData(ILandroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meizu/settings/gesture/TextureVideoView;)V

    return-void
.end method

.method private initData()V
    .registers 7

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 98
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d0109

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    iget-object v3, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initIndicator()V
    .registers 8

    const v0, 0x7f0a0357

    .line 188
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mIdicator:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_d
    iget-object v2, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 191
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080330

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 193
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40800000  # 4.0f

    invoke-static {p0, v4}, Lcom/meizu/settings/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/meizu/settings/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_3a

    .line 197
    invoke-static {p0, v4}, Lcom/meizu/settings/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    :cond_3a
    iget-object v4, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mIdicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_42
    return-void
.end method

.method private initView()V
    .registers 5

    .line 138
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mActionBar:Lflyme/support/v7/app/ActionBar;

    .line 139
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mActionBar:Lflyme/support/v7/app/ActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 140
    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mActionBar:Lflyme/support/v7/app/ActionBar;

    const v3, 0x7f120e70

    invoke-virtual {v0, v3}, Lflyme/support/v7/app/ActionBar;->setTitle(I)V

    :cond_26
    const v0, 0x7f0a07c2

    .line 147
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 148
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->actInMzNightMode(I)V

    .line 149
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;

    invoke-direct {v3, p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;-><init>(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$ViewPagerTransformer;

    invoke-direct {v0, v1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$ViewPagerTransformer;-><init>(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;)V

    invoke-virtual {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method private setData(ILandroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meizu/settings/gesture/TextureVideoView;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_12

    const-string p1, ""

    move-object v2, p1

    move p1, v0

    move v1, p1

    goto :goto_41

    :cond_12
    const v0, 0x7f080784

    const p1, 0x7f120e74

    const v1, 0x7f120e6e

    const-string v2, "simple_gesture_switching_app"

    goto :goto_41

    :cond_1e
    const v0, 0x7f080783

    const p1, 0x7f120e73

    const v1, 0x7f120e6d

    const-string v2, "simple_gesture_multitask"

    goto :goto_41

    :cond_2a
    const v0, 0x7f080782

    const p1, 0x7f120e72

    const v1, 0x7f120e6c

    const-string v2, "simple_gesture_home"

    goto :goto_41

    :cond_36
    const v0, 0x7f080780

    const p1, 0x7f120e71

    const v1, 0x7f120e6b

    const-string v2, "simple_gesture_back"

    .line 88
    :goto_41
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 89
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android.resource://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/raw/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/meizu/settings/gesture/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 40
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NavigationBarDetailSimpleActivity"

    const-string v0, "onCreate: [CPUDebug]"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d01f5

    .line 42
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->initData()V

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->initIndicator()V

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mIdicator:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_a

    goto :goto_d

    .line 226
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 229
    :goto_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .registers 3

    .line 51
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStop()V

    const-string v0, "NavigationBarDetailSimpleActivity"

    const-string v1, "onStop: [CPUDebug],VideoView.release()"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mVideoView:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p0}, Lcom/meizu/settings/gesture/TextureVideoView;->release()V

    return-void
.end method
