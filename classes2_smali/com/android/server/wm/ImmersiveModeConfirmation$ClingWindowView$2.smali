.class Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpInt2:[I

.field final synthetic this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$000(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 243
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 245
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 248
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$000(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 249
    invoke-static {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$000(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 245
    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 250
    return-void
.end method
