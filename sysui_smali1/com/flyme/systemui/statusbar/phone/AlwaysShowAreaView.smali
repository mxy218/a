.class public Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;
.super Landroid/widget/LinearLayout;
.source "AlwaysShowAreaView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mLastColor:I

.field private mNeedAutoColor:Z

.field private mShowText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mLastColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mLastColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mLastColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 42
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    if-eqz v0, :cond_7

    .line 43
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public onChange(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    .line 50
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    return-void
.end method

.method public setNeedAutoColor(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    return-void
.end method
