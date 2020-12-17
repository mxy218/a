.class public Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;
.super Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.source "FlymeMarqueeTicker.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStatusBarContents:Landroid/view/View;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 53
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 3

    .line 76
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p2, :cond_b

    .line 78
    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_b
    return-object p0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTicking:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public setStatusBarContents(Landroid/view/View;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    return-void
.end method

.method public setTickerView(Landroid/view/View;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTickerView:Landroid/view/View;

    return-void
.end method

.method public tickerDone()V
    .registers 4

    .line 68
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTickerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$anim;->marquee_fade_in:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTickerView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$anim;->marquee_push_up_out:I

    invoke-virtual {p0, v1, p0}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public tickerHalting()V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 86
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTickerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    const/high16 v1, 0x10a0000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2c
    return-void
.end method

.method public tickerStarting()V
    .registers 4

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTicking:Z

    .line 59
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTickerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mTickerView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$anim;->marquee_push_down_in:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->mStatusBarContents:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$anim;->marquee_fade_out:I

    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
