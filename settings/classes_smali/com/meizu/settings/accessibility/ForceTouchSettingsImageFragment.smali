.class public Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;
.super Landroid/app/Fragment;
.source "ForceTouchSettingsImageFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimateView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsPopState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    sget-object v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d4ccccd  # 0.05f

    const/4 v2, 0x0

    const v3, 0x3df5c28f  # 0.12f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mIsPopState:Z

    return-void
.end method

.method private enableActionBar(Z)V
    .registers 3

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    if-nez p0, :cond_14

    .line 98
    sget-object p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->TAG:Ljava/lang/String;

    const-string p1, "enableActionBar action bar is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 102
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/ActionBar;->show(I)V

    goto :goto_1e

    .line 104
    :cond_1b
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/ActionBar;->hide(I)V

    :goto_1e
    return-void
.end method

.method private makeExitAnimation()V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mAnimateView:Landroid/widget/ImageView;

    if-nez v0, :cond_c

    .line 56
    sget-object p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->TAG:Ljava/lang/String;

    const-string v0, "makeExitAnimation mAnimateView is null,return"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mAnimateView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 61
    iget-object p0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 62
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    int-to-float p0, v0

    .line 63
    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0x140

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 65
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5

    if-eqz p2, :cond_7

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 47
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mIsPopState:Z

    if-eqz v0, :cond_1a

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->makeExitAnimation()V

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f020003

    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d01d9

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02ef

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mAnimateView:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mIsPopState:Z

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/StatusbarColorUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 36
    iget-boolean v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mIsPopState:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->enableActionBar(Z)V

    :cond_b
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->enableActionBar(Z)V

    return-void
.end method

.method public setPopState()V
    .registers 2

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->mIsPopState:Z

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/ForceTouchSettingsImageFragment;->enableActionBar(Z)V

    return-void
.end method
