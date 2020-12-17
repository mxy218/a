.class public Lcom/flyme/systemui/smarttouch/SmartTouch;
.super Ljava/lang/Object;
.source "SmartTouch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
    }
.end annotation


# static fields
.field public static final sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

.field public static smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;


# instance fields
.field public behavior_alpha:I

.field public behavior_click:I

.field public behavior_doubleclick:I

.field public behavior_down:I

.field public behavior_leftright:I

.field public behavior_long:I

.field public behavior_up:I

.field private final context:Landroid/content/Context;

.field public defAlpha:F

.field private floatX:I

.field private floatY:I

.field private final handler:Landroid/os/Handler;

.field private lastImeTop:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

.field private final mTopViewGroup:Landroid/view/ViewGroup;

.field private final mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-direct {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;-><init>()V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    .line 647
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    .line 648
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_long:I

    .line 649
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_up:I

    .line 650
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    .line 651
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    const/16 v0, 0xff

    .line 652
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_alpha:I

    const/high16 v0, 0x3f800000  # 1.0f

    .line 653
    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    .line 65
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .line 68
    sget v0, Lcom/android/systemui/R$layout;->smarttouch_mainviewgroup:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->stableshow:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/smarttouch/SmartTouchView;

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->showSmartTouch()V

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    sput-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 79
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onSettingsChange()V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.theme.change"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/smarttouch/SmartTouch;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I
    .registers 2

    .line 32
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/smarttouch/SmartTouch;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    return p0
.end method

.method static synthetic access$502(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I
    .registers 2

    .line 32
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    return p1
.end method

.method static synthetic access$600(Lcom/flyme/systemui/smarttouch/SmartTouch;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->lastImeTop:I

    return p0
.end method

.method static synthetic access$602(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I
    .registers 2

    .line 32
    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->lastImeTop:I

    return p1
.end method

.method public static final onForceHide(Z)V
    .registers 3

    .line 599
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean p0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    .line 601
    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string v1, "SmartTouch"

    if-nez p0, :cond_3a

    .line 604
    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string/jumbo p0, "show when ForceHide cancel"

    .line 605
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    goto :goto_4f

    .line 608
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not show when lid dismiss "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_3a
    const-string p0, "hide when ForceHide"

    .line 611
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    .line 613
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->access$800(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onUnLock()V

    :goto_4f
    return-void
.end method

.method public static final onKeyguardChange(Z)V
    .registers 3

    .line 560
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean p0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 562
    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string v1, "SmartTouch"

    if-nez p0, :cond_3a

    .line 565
    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string/jumbo p0, "show when keyguard dismiss"

    .line 566
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    goto :goto_4f

    .line 569
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not show when keyguard dismiss "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_3a
    const-string p0, "hide when keyguard show"

    .line 572
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    .line 574
    sget-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->access$800(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onUnLock()V

    :goto_4f
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->resetOnDestroy(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->dismissSmartTouch()V

    const/4 p0, 0x0

    .line 91
    sput-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    return-void
.end method

.method final dismissSmartTouch()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final hide()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$4;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$5;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onSettingsChange()V
    .registers 7

    .line 618
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0xff

    const/4 v2, -0x2

    const-string v3, "mz_smart_touch_behavior_alpha"

    .line 619
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_alpha:I

    const/4 v3, 0x0

    const-string v4, "mz_smart_touch_behavior_click"

    .line 621
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    const-string v4, "mz_smart_touch_behavior_doubleclick"

    .line 623
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    const-string v4, "mz_smart_touch_behavior_long"

    .line 625
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_long:I

    const-string v4, "mz_smart_touch_behavior_up"

    .line 627
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_up:I

    const-string v4, "mz_smart_touch_behavior_down"

    .line 629
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    const-string v4, "mz_smart_touch_behavior_leftright"

    .line 631
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    .line 633
    iget v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    const/4 v5, 0x1

    if-nez v4, :cond_48

    move v3, v5

    :cond_48
    const-string v4, "mz_float_touch_enable"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 636
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eq v0, v5, :cond_5a

    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    if-eqz v0, :cond_5a

    .line 637
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->resetWindow(Landroid/content/Context;)V

    :cond_5a
    const/16 v0, 0x28

    .line 640
    iget v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_alpha:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    .line 641
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 643
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setTopViewGroupVisible(Z)V
    .registers 2

    .line 677
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method final showSmartTouch()V
    .registers 7

    .line 147
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e1

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    const-string v1, "SmartTouch"

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 150
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 151
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->smarttouch_show_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 152
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->smarttouch_show_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 154
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    const-string/jumbo v2, "smarttouch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 156
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    const-string v4, "position_x"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    .line 157
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v2, v5

    const-string v3, "position_y"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    .line 159
    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 160
    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x800033

    .line 161
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x1000108

    .line 162
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 169
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    .line 170
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final toGone()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$2;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final toVisible()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$3;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
