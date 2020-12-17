.class public Lcom/meizu/settings/display/aod/NewAODStyleActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "NewAODStyleActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;,
        Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;,
        Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/ImageView;

.field private mConfirm:Landroid/widget/ImageView;

.field private mIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeepDPIContext:Landroid/content/Context;

.field private mPagerIndicator:Lcom/meizu/common/widget/PagerIndicator;

.field private mPreview:Landroid/widget/ImageView;

.field private mSelectedItem:Landroid/view/View;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/view/LayoutInflater;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/display/aod/NewAODStyleActivity;I)I
    .registers 2

    .line 35
    iput p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mSelectedItem:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mSelectedItem:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method private setLightStatusBar(Z)V
    .registers 3

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_11

    or-int/lit16 p1, v0, 0x2000

    goto :goto_13

    :cond_11
    and-int/lit16 p1, v0, -0x2001

    :goto_13
    if-eq p1, v0, :cond_18

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_18
    return-void
.end method

.method private updateAODStyle()V
    .registers 5

    .line 248
    sget-object v0, Lcom/meizu/settings/display/aod/Constants;->sAodStyleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->sAodStyleMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    if-ne v2, v3, :cond_a

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 255
    :goto_30
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_style"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$NewAODStyleActivity(Landroid/view/View;)V
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$NewAODStyleActivity(Landroid/view/View;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->updateAODStyle()V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 49
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 50
    invoke-static {p0, p1, p1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mKeepDPIContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mKeepDPIContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iget-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d023a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 56
    sget-object v1, Lcom/meizu/settings/display/aod/Constants;->sAodStyleMap:Ljava/util/HashMap;

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "aod_style"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    const v1, 0x7f0a057c

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a057b

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPreview:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPreview:Landroid/widget/ImageView;

    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->mPreviewIcons:[Ljava/lang/Integer;

    iget v4, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0a0357

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/PagerIndicator;

    iput-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPagerIndicator:Lcom/meizu/common/widget/PagerIndicator;

    .line 63
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPagerIndicator:Lcom/meizu/common/widget/PagerIndicator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/PagerIndicator;->setPagerCount(I)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPagerList:Ljava/util/List;

    move v1, v3

    :goto_80
    if-ge v1, v2, :cond_9f

    .line 68
    iget-object v4, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d010c

    iget-object v6, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 69
    new-instance v5, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    invoke-direct {v5, p0, v1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;-><init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;I)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v5, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPagerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 73
    :cond_9f
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;

    iget-object v4, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPagerList:Ljava/util/List;

    invoke-direct {v2, p0, v4}, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;-><init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f0a0148

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mCancel:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mCancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/meizu/settings/display/aod/-$$Lambda$NewAODStyleActivity$xVRq8yj0kmreBKK0PNwI3D3MAhM;

    invoke-direct {v2, p0}, Lcom/meizu/settings/display/aod/-$$Lambda$NewAODStyleActivity$xVRq8yj0kmreBKK0PNwI3D3MAhM;-><init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a019d

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mConfirm:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mConfirm:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/settings/display/aod/-$$Lambda$NewAODStyleActivity$gB8YXZOrf--iXAUb1vUKdsusk_I;

    invoke-direct {v1, p0}, Lcom/meizu/settings/display/aod/-$$Lambda$NewAODStyleActivity$gB8YXZOrf--iXAUb1vUKdsusk_I;-><init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 88
    invoke-direct {p0, v3}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->setLightStatusBar(Z)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3, p1}, Lcom/meizu/common/util/NavigationBarUtils;->setDarkIconColor(Landroid/view/Window;ZZ)V

    .line 93
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar;->hide()V

    .line 96
    iget-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 98
    iget p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mIndex:I

    div-int/lit8 p1, p1, 0x9

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 100
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPagerIndicator:Lcom/meizu/common/widget/PagerIndicator;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PagerIndicator;->setCirclePosition(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 208
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->mPagerIndicator:Lcom/meizu/common/widget/PagerIndicator;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PagerIndicator;->setCirclePosition(I)V

    return-void
.end method
