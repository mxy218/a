.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateShow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 515
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    return-void
.end method
