.class Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;
.super Ljava/lang/Object;
.source "AbsPeekAndPopLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setPeekAndPopListener(Landroid/view/View;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

.field final synthetic val$sourceView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;Landroid/view/View;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iput-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->val$sourceView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 252
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 255
    :cond_8
    iget-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    if-nez v1, :cond_bc

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isMoveWin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    .line 256
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isSplitmode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    .line 257
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_bc

    .line 260
    :cond_32
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->val$sourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget v1, v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    invoke-static {p2, v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/content/Context;F)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 262
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_bc

    .line 263
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iput-object p1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    .line 264
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    iput-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    .line 265
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    if-eqz v0, :cond_96

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-nez v0, :cond_6c

    goto :goto_96

    .line 269
    :cond_6c
    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_7c

    .line 270
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    :cond_7c
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-interface {v0, p2, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->peek(Landroid/view/MotionEvent;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 276
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object p2, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-virtual {p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->startPeekAndPop(Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z

    move-result v2

    .line 278
    :cond_90
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p0, v2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$602(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;Z)Z

    return v2

    .line 266
    :cond_96
    :goto_96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mConfig = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object p2, p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mListener = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbsPeekAndPopLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    :goto_bc
    return v2
.end method
