.class public Lcom/android/systemui/stackdivider/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;II)V
    .registers 11

    .line 51
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f2

    const v4, 0x20840028

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 56
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 57
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string p3, "DockedStackDivider"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p3, 0x1

    .line 59
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 p2, 0x700

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 63
    iget-object p2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public remove()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 69
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_9
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    return-void
.end method

.method public setSlippery(Z)V
    .registers 7

    const/4 v0, 0x1

    const/high16 v1, 0x20000000

    if-eqz p1, :cond_12

    .line 76
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v3, v1

    if-nez v4, :cond_12

    or-int p1, v3, v1

    .line 77
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_23

    :cond_12
    if-nez p1, :cond_22

    .line 79
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_22

    const v1, -0x20000001

    and-int/2addr v1, v2

    .line 80
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_2e

    .line 84
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    return-void
.end method

.method public setTouchable(Z)V
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_10

    .line 90
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_10

    or-int/lit8 p1, v2, 0x10

    .line 91
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_20

    :cond_10
    if-eqz p1, :cond_1f

    .line 93
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1f

    and-int/lit8 v1, v1, -0x11

    .line 94
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_2b

    .line 98
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    return-void
.end method
