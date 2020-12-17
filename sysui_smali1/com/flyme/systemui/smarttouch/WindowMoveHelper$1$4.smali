.class Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->imeWillHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->access$000(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;->imeWillHide()V

    return-void
.end method
