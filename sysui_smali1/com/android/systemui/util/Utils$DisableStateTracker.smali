.class public Lcom/android/systemui/util/Utils$DisableStateTracker;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableStateTracker"
.end annotation


# instance fields
.field private mDisabled:Z

.field private final mMask1:I

.field private final mMask2:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask1:I

    .line 61
    iput p2, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask2:I

    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .registers 5

    .line 84
    iget-object p4, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Display;->getDisplayId()I

    move-result p4

    if-eq p1, p4, :cond_d

    return-void

    .line 87
    :cond_d
    iget p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask1:I

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    iget p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mMask2:I

    and-int/2addr p1, p3

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    move p1, p2

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    .line 88
    :goto_1c
    iget-boolean p3, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mDisabled:Z

    if-ne p1, p3, :cond_21

    return-void

    .line 89
    :cond_21
    iput-boolean p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mDisabled:Z

    .line 90
    iget-object p0, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    if-eqz p1, :cond_29

    const/16 p2, 0x8

    :cond_29
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/util/Utils$DisableStateTracker;->mView:Landroid/view/View;

    return-void
.end method
