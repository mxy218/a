.class Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->imeWillShow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

.field final synthetic val$imeTop:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;I)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iput p2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    const-string v1, "SmartTouch"

    if-gtz v0, :cond_4c

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowmove imeWillShow : error <0 and use "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    iget p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-interface {v0, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;->imeWillShow(I)V

    goto :goto_6c

    .line 80
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowmove imeWillShow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;->imeWillShow(I)V

    :goto_6c
    return-void
.end method
