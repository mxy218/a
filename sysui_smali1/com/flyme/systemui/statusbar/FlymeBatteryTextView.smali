.class public Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;
.super Landroid/widget/TextView;
.source "FlymeBatteryTextView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mLowColor:I

.field private mLowColorMode:Z

.field private mNormalColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    const/high16 p1, -0x10000

    .line 23
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    const/high16 p1, -0x10000

    .line 23
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    const/high16 p1, -0x10000

    .line 23
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    return-void
.end method

.method private apply()V
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_f

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    goto :goto_11

    :cond_f
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    :goto_11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 40
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 41
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 69
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    .line 70
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->apply()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 46
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 47
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 52
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 53
    new-instance v0, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public setLowColorMode(ZI)V
    .registers 3

    .line 58
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    .line 59
    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    .line 60
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->apply()V

    return-void
.end method
