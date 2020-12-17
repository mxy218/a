.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggingDown:Z

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mHost:Landroid/view/View;

.field private mMinDragDistance:I

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;Lcom/android/systemui/plugins/FalsingManager;)V
    .registers 8

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_drag_down_min_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    .line 66
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 67
    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    .line 69
    iput-object p5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public isDragDownEnabled()Z
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->isDragDownEnabledForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    return p0
.end method

.method public isDraggingDown()Z
    .registers 1

    .line 241
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    return p0
.end method
