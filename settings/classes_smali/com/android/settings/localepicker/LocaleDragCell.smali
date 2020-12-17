.class Lcom/android/settings/localepicker/LocaleDragCell;
.super Landroid/widget/RelativeLayout;
.source "LocaleDragCell.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mLocalized:Landroid/widget/TextView;

.field private mMiniLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDragHandle()Landroid/widget/ImageView;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0397

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a038b

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    const v0, 0x7f0a0446

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    const v0, 0x7f0a016e

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    const v0, 0x7f0a0239

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setLocalized(Z)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setMiniLabel(Ljava/lang/String;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setShowCheckbox(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_f

    .line 65
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    .line 68
    :cond_f
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setShowHandle(Z)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setShowMiniLabel(Z)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 82
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
