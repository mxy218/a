.class public Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;
.super Landroid/widget/TextSwitcher;
.source "MarqueeTickerView.java"


# instance fields
.field mMarqueeTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 5

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->mMarqueeTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->reflowText()V

    return-void
.end method

.method public setTicker(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->mMarqueeTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    return-void
.end method
