.class public Lcom/meizu/settings/display/aod/AODStyleChooseActivity;
.super Lflyme/support/v7/app/AppCompatActivity;
.source "AODStyleChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/aod/AODStyleChooseActivity$StylePagerAdapter;
    }
.end annotation


# instance fields
.field private mChooseButton:Landroid/widget/Button;

.field private mCurrentPosition:I

.field private mStyleImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mStylePager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mCurrentPosition:I

    return p1
.end method

.method private initStyleImages()V
    .registers 4

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStyleImages:Ljava/util/List;

    const/4 v0, 0x0

    .line 101
    :goto_8
    sget-object v1, Lcom/meizu/settings/display/aod/Constants;->mImgs:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 102
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->mImgs:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v2, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStyleImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 40
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    .line 43
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    invoke-virtual {p1, v1}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    const p1, 0x7f0d0035

    .line 48
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->initStyleImages()V

    const p1, 0x7f0a06d1

    .line 52
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStylePager:Landroidx/viewpager/widget/ViewPager;

    .line 53
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStylePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$StylePagerAdapter;

    iget-object v2, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStyleImages:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$StylePagerAdapter;-><init>(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 54
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStylePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$1;-><init>(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "aod_style"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODStyleChooseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mStylePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const p1, 0x7f0a06ce

    .line 75
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mChooseButton:Landroid/widget/Button;

    .line 76
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mChooseButton:Landroid/widget/Button;

    const v0, 0x1bffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 77
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->mChooseButton:Landroid/widget/Button;

    new-instance v0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;-><init>(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
