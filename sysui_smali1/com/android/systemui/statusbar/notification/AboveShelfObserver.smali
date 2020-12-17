.class public Lcom/android/systemui/statusbar/notification/AboveShelfObserver;
.super Ljava/lang/Object;
.source "AboveShelfObserver.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;
    }
.end annotation


# instance fields
.field private mHasViewsAboveShelf:Z

.field private final mHostLayout:Landroid/view/ViewGroup;

.field private mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method hasViewsAboveShelf()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 67
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    return p0
.end method

.method public onAboveShelfStateChanged(Z)V
    .registers 6

    if-nez p1, :cond_24

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_24

    .line 48
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 49
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_21

    .line 50
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p1, 0x1

    goto :goto_24

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 57
    :cond_24
    :goto_24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    if-eq v0, p1, :cond_31

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    if-eqz p0, :cond_31

    .line 60
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;->onHasViewsAboveShelfChanged(Z)V

    :cond_31
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    return-void
.end method
