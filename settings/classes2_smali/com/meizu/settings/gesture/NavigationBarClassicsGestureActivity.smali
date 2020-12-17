.class public Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;
.super Lflyme/support/v7/app/AppCompatActivity;
.source "NavigationBarClassicsGestureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;
    }
.end annotation


# instance fields
.field private mDemoVideo:Lcom/meizu/settings/gesture/TextureVideoView;

.field private mDemoVideoBg:Landroid/widget/FrameLayout;

.field private mKeepDPIContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initDemoVideo()V
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/navigation_bar_mback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0201

    .line 99
    invoke-virtual {p0, v1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mDemoVideoBg:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0200

    .line 100
    invoke-virtual {p0, v1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/gesture/TextureVideoView;

    iput-object v1, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mDemoVideo:Lcom/meizu/settings/gesture/TextureVideoView;

    .line 102
    iget-object v1, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mDemoVideoBg:Landroid/widget/FrameLayout;

    const v2, 0x7f08072f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 103
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mDemoVideo:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/gesture/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 54
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 56
    invoke-static {p0, p1, p1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mKeepDPIContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mKeepDPIContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 58
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 62
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const p1, 0x7f1208b9

    .line 65
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/ActionBar;->setTitle(I)V

    .line 68
    :cond_34
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a017f

    new-instance v1, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;

    invoke-direct {v1}, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 79
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->initDemoVideo()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 85
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStop()V

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;->mDemoVideo:Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-virtual {p0}, Lcom/meizu/settings/gesture/TextureVideoView;->release()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 1

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result p0

    return p0
.end method
