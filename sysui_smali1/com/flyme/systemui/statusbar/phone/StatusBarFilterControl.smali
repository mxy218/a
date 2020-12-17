.class public Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;
.super Ljava/lang/Object;
.source "StatusBarFilterControl.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private colorAnimator:Landroid/animation/ValueAnimator;

.field private currentColor:I

.field private mParentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusBarFilterControl"

    .line 23
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    .line 42
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->mParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;I)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(I)V

    return-void
.end method

.method private setColorFilter(I)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->mParentView:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;I)V

    .line 85
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    return-void
.end method

.method public static setColorFilter(Landroid/view/ViewGroup;I)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, p1, v0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;IZ)V

    return-void
.end method

.method public static setColorFilter(Landroid/view/ViewGroup;IZ)V
    .registers 8

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_49

    .line 65
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    instance-of v3, v2, Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;

    if-eqz v3, :cond_15

    .line 67
    check-cast v2, Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;

    invoke-interface {v2, p1}, Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;->setViewColorFilter(I)V

    goto :goto_46

    .line 68
    :cond_15
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1f

    .line 69
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1, p2}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;IZ)V

    goto :goto_46

    .line 71
    :cond_1f
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_29

    .line 72
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46

    .line 73
    :cond_29
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_46

    .line 74
    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p2, :cond_46

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_49
    return-void
.end method


# virtual methods
.method public setFilterColor(IZ)V
    .registers 7

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    if-eqz p2, :cond_19

    .line 97
    iget p2, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    if-eq p2, v2, :cond_17

    if-ne p2, v0, :cond_19

    :cond_17
    move p2, v1

    goto :goto_1a

    :cond_19
    move p2, v3

    :goto_1a
    if-eqz p2, :cond_21

    if-eq p1, v2, :cond_22

    if-ne p1, v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v3

    :cond_22
    :goto_22
    if-eqz v1, :cond_43

    .line 100
    iget p2, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->currentColor:I

    invoke-static {p2, p1}, Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;->ofColor(II)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    .line 101
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;-><init>(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_46

    .line 111
    :cond_43
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(I)V

    :goto_46
    return-void
.end method
