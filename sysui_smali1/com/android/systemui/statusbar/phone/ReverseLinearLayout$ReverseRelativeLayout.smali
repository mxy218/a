.class public Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ReverseLinearLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseRelativeLayout"
.end annotation


# instance fields
.field private mDefaultGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    return-void
.end method


# virtual methods
.method public reverse(Z)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->updateGravity(Z)V

    .line 136
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->access$000(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setDefaultGravity(I)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    return-void
.end method

.method public updateGravity(Z)V
    .registers 5

    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    const/16 v1, 0x50

    const/16 v2, 0x30

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    return-void

    .line 149
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    if-eqz p1, :cond_14

    if-ne v0, v2, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 154
    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getGravity()I

    move-result p1

    if-eq p1, v0, :cond_1d

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :cond_1d
    return-void
.end method
