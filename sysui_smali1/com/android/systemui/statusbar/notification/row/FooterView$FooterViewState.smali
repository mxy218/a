.class public Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/FooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FooterViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/FooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/FooterView;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->this$0:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 5

    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 99
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v0, :cond_25

    .line 100
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->this$0:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->access$000(Lcom/android/systemui/statusbar/notification/row/FooterView;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p0, :cond_17

    move p0, v1

    goto :goto_18

    :cond_17
    move p0, v2

    :goto_18
    if-eqz p0, :cond_21

    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    :cond_25
    return-void
.end method
