.class public Lcom/android/systemui/tuner/ClipboardView;
.super Landroid/widget/ImageView;
.source "ClipboardView.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private mCurrentClip:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-class p2, Landroid/content/ClipboardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method

.method private setBackgroundDragTarget(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const p1, 0x4dffffff  # 5.3687088E8f

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 77
    :goto_7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .line 42
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startListening()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 48
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->stopListening()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 5

    .line 62
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_16

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1f

    const/4 p1, 0x5

    if-eq v0, p1, :cond_12

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1f

    goto :goto_23

    .line 64
    :cond_12
    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    goto :goto_23

    .line 67
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1f
    const/4 p1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    :goto_23
    return v2
.end method

.method public onPrimaryClipChanged()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_f

    .line 98
    sget v0, Lcom/android/systemui/R$drawable;->clipboard_full:I

    goto :goto_11

    :cond_f
    sget v0, Lcom/android/systemui/R$drawable;->clipboard_empty:I

    .line 97
    :goto_11
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_d

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startPocketDrag()V

    .line 57
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public startListening()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->onPrimaryClipChanged()V

    return-void
.end method

.method public startPocketDrag()V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method public stopListening()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method
