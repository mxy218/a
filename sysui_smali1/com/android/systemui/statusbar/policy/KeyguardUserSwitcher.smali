.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;,
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

.field private mAnimating:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mUserSwitcher:Landroid/view/ViewGroup;

.field private final mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 14

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_keyguardUserSwitcher:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x1

    .line 63
    :goto_19
    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_68

    if-eqz v0, :cond_68

    .line 65
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 66
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->reinflateViews()V

    .line 68
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 69
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 70
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 71
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-direct {p2, p1, v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    .line 72
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, p3}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 74
    new-instance p2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    const-wide/16 v4, 0x190

    const/high16 v6, -0x41000000  # -0.5f

    const/high16 v7, 0x3f000000  # 0.5f

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    goto :goto_73

    :cond_68
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    :goto_73
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    return-void
.end method

.method private cancelAnimations()V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1a

    .line 149
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 151
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_21

    .line 152
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 154
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return-void
.end method

.method private hide(Z)Z
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    if-eqz p1, :cond_16

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startDisappearAnimation()V

    goto :goto_1d

    .line 138
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 140
    :goto_1d
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method private refresh()V
    .registers 8

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getCount()I

    move-result v1

    .line 206
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_4b

    if-ge v3, v1, :cond_3b

    const/4 v4, 0x0

    if-ge v3, v0, :cond_1e

    .line 211
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 213
    :cond_1e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-nez v4, :cond_2e

    .line 216
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_48

    :cond_2e
    if-eq v4, v5, :cond_48

    .line 219
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 220
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_48

    .line 223
    :cond_3b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 224
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4b
    return-void
.end method

.method private reinflateViews()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 91
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->keyguard_user_switcher_inner:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    sget v1, Lcom/android/systemui/R$id;->keyguard_user_switcher_inner:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private shouldExpandByDefault()Z
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private startAppearAnimation()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 160
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_17

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 164
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_5c

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_5c
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private startDisappearAnimation()V
    .registers 4

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public hideIfNotSimple(Z)Z
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_11

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method isAnimating()Z
    .registers 1

    .line 237
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_a

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->reinflateViews()V

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    :cond_a
    return-void
.end method

.method public setKeyguard(ZZ)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_10

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->shouldExpandByDefault()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    goto :goto_13

    .line 107
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)Z

    :cond_13
    :goto_13
    return-void
.end method

.method public show(Z)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->refresh()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    if-eqz p1, :cond_25

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V

    :cond_25
    return-void
.end method
