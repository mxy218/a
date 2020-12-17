.class public Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;
.super Landroid/widget/FrameLayout;
.source "NotificationFilterPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;,
        Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;
    }
.end annotation


# instance fields
.field private mAlphaAnimDuration:J

.field private mAnimIn:Landroid/animation/AnimatorSet;

.field private mAnimOut:Landroid/animation/AnimatorSet;

.field private mAnimationInEndAction:Ljava/lang/Runnable;

.field private mAnimationOutEndAction:Ljava/lang/Runnable;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mClosedClickListener:Landroid/view/View$OnClickListener;

.field private mDismissButton:Landroid/widget/TextView;

.field private mFilterHeader:Landroid/view/View;

.field private mFilterHeaderMarginTop:I

.field private mFilterInterceptedTips:Landroid/widget/TextView;

.field private mFilterSettings:Landroid/widget/TextView;

.field private mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mFilterTipsContent:Landroid/widget/RelativeLayout;

.field private mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

.field private mStackTranslationY:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTouchListener:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance p1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mTouchListener:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    .line 67
    sget-object p1, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$RJziiL06VqFEErUwmJt71s-rlqY;->INSTANCE:Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$RJziiL06VqFEErUwmJt71s-rlqY;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationInEndAction:Ljava/lang/Runnable;

    .line 68
    new-instance p1, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$tW7OoQ2RhREooKaW5KusPgIBkMg;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$tW7OoQ2RhREooKaW5KusPgIBkMg;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance p2, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mTouchListener:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    .line 67
    sget-object p2, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$RJziiL06VqFEErUwmJt71s-rlqY;->INSTANCE:Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$RJziiL06VqFEErUwmJt71s-rlqY;

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationInEndAction:Ljava/lang/Runnable;

    .line 68
    new-instance p2, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$tW7OoQ2RhREooKaW5KusPgIBkMg;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$tW7OoQ2RhREooKaW5KusPgIBkMg;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$integer;->qs_list_anim_out_time:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->filter_stack_translation_y:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    .line 79
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance p1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mTouchListener:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    .line 67
    sget-object p1, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$RJziiL06VqFEErUwmJt71s-rlqY;->INSTANCE:Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$RJziiL06VqFEErUwmJt71s-rlqY;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationInEndAction:Ljava/lang/Runnable;

    .line 68
    new-instance p1, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$tW7OoQ2RhREooKaW5KusPgIBkMg;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$tW7OoQ2RhREooKaW5KusPgIBkMg;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleShowFilterPanelBtnOnClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Ljava/lang/Runnable;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mClosedClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeaderMarginTop:I

    return p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method private createInAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 13

    .line 263
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_8c

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 267
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3ea8f5c3  # 0.33f

    const/4 v7, 0x0

    const v8, 0x3f28f5c3  # 0.66f

    invoke-direct {v3, v6, v7, v8, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 268
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 270
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-array v9, v2, [F

    fill-array-data v9, :array_94

    invoke-static {v8, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 274
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    new-array v9, v2, [I

    fill-array-data v9, :array_9c

    const-string v10, "imageAlpha"

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 276
    invoke-virtual {v8, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-wide v9, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 278
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-array v9, v2, [F

    iget p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    neg-int p0, p0

    int-to-float p0, p0

    const/4 v10, 0x0

    aput p0, v9, v10

    const/4 p0, 0x1

    aput v7, v9, p0

    const-string/jumbo v11, "translationY"

    invoke-static {v3, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 280
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v11, 0x3dcccccd  # 0.1f

    invoke-direct {v9, v6, v7, v11, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 281
    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x140

    .line 282
    invoke-virtual {v3, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v10

    aput-object v3, v5, p0

    aput-object v4, v5, v2

    const/4 p0, 0x3

    aput-object v8, v5, p0

    .line 283
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x64

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0

    nop

    :array_8c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_9c
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private createOutAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 16

    .line 290
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_8e

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 294
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3f28f5c3  # 0.66f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3  # 0.33f

    invoke-direct {v3, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 295
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 297
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-array v9, v2, [F

    fill-array-data v9, :array_96

    invoke-static {v8, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 299
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 301
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-array v9, v2, [F

    const/4 v10, 0x0

    aput v7, v9, v10

    iget v11, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    neg-int v11, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v9, v12

    const-string/jumbo v11, "translationY"

    invoke-static {v8, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 303
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    new-array v11, v2, [I

    fill-array-data v11, :array_9e

    const-string v13, "imageAlpha"

    invoke-static {v9, v13, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 305
    invoke-virtual {v9, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    iget-wide v13, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v9, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 307
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v11, 0x3f000000  # 0.5f

    invoke-direct {v3, v11, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 308
    invoke-virtual {v8, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    iget-wide v5, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v8, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v10

    aput-object v8, v3, v12

    aput-object v4, v3, v2

    const/4 v1, 0x3

    aput-object v9, v3, v1

    .line 310
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 312
    new-instance v1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_8e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_96
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_9e
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private handleFilterSettingsOnClick()V
    .registers 4

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    const-string v2, "com.meizu.settings.notificationstatusbar.FlymeNotificationAppList"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, ":settings:show_fragment_as_shortcut"

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    return-void
.end method

.method private handleNotificationFilterPanelIn()V
    .registers 4

    const-string v0, "FilterPanel"

    const-string v1, "handleNotificationFilterPanelIn: enter"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000  # 1.0f

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;

    .line 200
    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;->onShowingPanel(Z)V

    goto :goto_16

    .line 202
    :cond_27
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setShowFilterPanel(Z)V

    return-void
.end method

.method private handleNotificationFilterPanelOut()V
    .registers 4

    const/16 v0, 0x8

    .line 188
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;

    .line 190
    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;->onShowingPanel(Z)V

    goto :goto_b

    .line 192
    :cond_1c
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setShowFilterPanel(Z)V

    return-void
.end method

.method private handleShowFilterPanelBtnOnClick()V
    .registers 3

    .line 216
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->isNotificationFilterPanelShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 217
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    goto :goto_18

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeRemoteInputs()V

    .line 220
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->openNotificationFilterPanel(Z)V

    .line 221
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 222
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getTotalNotificationCounts()I

    :goto_18
    return-void
.end method

.method static synthetic lambda$new$0()V
    .registers 0

    return-void
.end method

.method static synthetic lambda$onFinishInflate$3(Landroid/view/View;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private updateFilterPanelWidth()V
    .registers 3

    .line 373
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 374
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 375
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateHeaderMarginTop()V
    .registers 3

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 255
    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->getFilterHeaderMarginTop(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeaderMarginTop:I

    .line 257
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    iget v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeaderMarginTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 259
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;)V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closeNotificationFilterPanel(Z)V
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeNotificationFilterPanel: debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 164
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShadeExpanded(Z)V

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_47

    :cond_3c
    if-eqz p1, :cond_44

    .line 168
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_47

    .line 170
    :cond_44
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleNotificationFilterPanelOut()V

    :cond_47
    :goto_47
    return-void
.end method

.method public isNotificationFilterPanelShowing()Z
    .registers 1

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public synthetic lambda$new$1$NotificationFilterPanel()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleNotificationFilterPanelOut()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$NotificationFilterPanel(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$4$NotificationFilterPanel(Landroid/view/View;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleFilterSettingsOnClick()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 90
    sget v0, Lcom/android/systemui/R$id;->notification_filter_stack:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 92
    sget v0, Lcom/android/systemui/R$id;->filter_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/android/systemui/R$id;->notification_filter_header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    .line 94
    sget v0, Lcom/android/systemui/R$id;->filter_intercepted_tips:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterInterceptedTips:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->filter_dismiss_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->filter_tips_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterTipsContent:Landroid/widget/RelativeLayout;

    .line 98
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$bdOc_G1ZOlqdVSc9f8XoRSci6gA;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$bdOc_G1ZOlqdVSc9f8XoRSci6gA;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget-object v0, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;->INSTANCE:Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    new-instance v1, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$kz_DcMs60MGAixy7HVJeNfRzQ8o;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$kz_DcMs60MGAixy7HVJeNfRzQ8o;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->createInAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    .line 104
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->createOutAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    .line 106
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateHeaderMarginTop()V

    .line 107
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateFilterPanelWidth()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 114
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateTopPadding(FZ)V

    return-void
.end method

.method public openNotificationFilterPanel(Z)V
    .registers 8

    .line 141
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShadeExpanded(Z)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openNotificationFilterPanel1: vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",headerVis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",headAl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FilterPanel"

    .line 144
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_f6

    .line 147
    :cond_62
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleNotificationFilterPanelIn()V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openNotificationFilterPanel2: vis="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_ba

    .line 151
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 152
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 153
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 154
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 156
    :cond_ba
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openNotificationFilterPanel3: vis="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "headAl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    return-void
.end method

.method public setNumberView(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNumberView: filterBtnHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 127
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mClosedClickListener:Landroid/view/View$OnClickListener;

    .line 121
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mClosedClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mTouchListener:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$FilterPanelTouchListener;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public updateNotificationCounts()V
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateNotificationCounts()V

    :cond_7
    return-void
.end method

.method public updateResources()V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterInterceptedTips:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->intercepted_notification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->filter_notification_manage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->filter_notification_clear:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterInterceptedTips:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_tips_text_size:I

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 231
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_tips_text_size:I

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 232
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_tips_text_size:I

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 234
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateHeaderMarginTop()V

    .line 236
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->updateFilterPanelWidth()V

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_58

    .line 239
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterTipsContent:Landroid/widget/RelativeLayout;

    .line 240
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->filter_tips_left_padding_landscape:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->filter_tips_right_padding_landscape:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 239
    invoke-virtual {v0, v2, v1, p0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_71

    .line 246
    :cond_58
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterTipsContent:Landroid/widget/RelativeLayout;

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->filter_tips_left_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->filter_tips_right_padding:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 246
    invoke-virtual {v0, v2, v1, p0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_71
    return-void
.end method
