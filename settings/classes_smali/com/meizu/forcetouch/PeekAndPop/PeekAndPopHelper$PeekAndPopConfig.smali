.class public Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;
.super Ljava/lang/Object;
.source "PeekAndPopHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeekAndPopConfig"
.end annotation


# instance fields
.field public MenuBackgroundColor:I

.field public mConfirmBgResId:I

.field public mConfirmBitmap:Landroid/graphics/Bitmap;

.field public mConfirmRect:Landroid/graphics/Rect;

.field public mDisablePop:Z

.field public mHasVerticalScrollArrow:Z

.field public mMarkToRead:Z

.field public mMenuBackgroundColor:I

.field public mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mPeekMenuAdapter:Landroid/widget/ListAdapter;

.field public mPeekRect:Landroid/graphics/Rect;

.field public mPeekType:I

.field public mPeekView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mPullReresh:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->MenuBackgroundColor:I

    .line 54
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBgResId:I

    .line 57
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMenuBackgroundColor:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mHasVerticalScrollArrow:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 64
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBitmap:Landroid/graphics/Bitmap;

    .line 67
    :cond_12
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmRect:Landroid/graphics/Rect;

    .line 68
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    .line 69
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 71
    :cond_1b
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekView:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekRect:Landroid/graphics/Rect;

    .line 73
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPullReresh:Landroid/view/View;

    .line 74
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekMenuAdapter:Landroid/widget/ListAdapter;

    .line 75
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMarkToRead:Z

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBgResId:I

    .line 78
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mDisablePop:Z

    .line 79
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMenuBackgroundColor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPeekType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mConfirmRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPeekRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPullReresh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPullReresh:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPeekMenuAdapter = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekMenuAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPullReresh:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMarkToRead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMarkToRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mConfirmBgResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBgResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDisablePop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mDisablePop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMenuBackgroundColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMenuBackgroundColor:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
