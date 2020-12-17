.class Lcom/flyme/systemui/quickreply/QuickReplyController$1;
.super Landroid/database/ContentObserver;
.source "QuickReplyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/quickreply/QuickReplyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/quickreply/QuickReplyController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/quickreply/QuickReplyController;Landroid/os/Handler;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/quickreply/QuickReplyController$1;->this$0:Lcom/flyme/systemui/quickreply/QuickReplyController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 36
    iget-object p1, p0, Lcom/flyme/systemui/quickreply/QuickReplyController$1;->this$0:Lcom/flyme/systemui/quickreply/QuickReplyController;

    invoke-static {p1}, Lcom/flyme/systemui/quickreply/QuickReplyController;->access$100(Lcom/flyme/systemui/quickreply/QuickReplyController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/quickreply/QuickReplyController;->access$002(Lcom/flyme/systemui/quickreply/QuickReplyController;Z)Z

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "space_mode enable changed! mSpaceModeEnable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/quickreply/QuickReplyController$1;->this$0:Lcom/flyme/systemui/quickreply/QuickReplyController;

    invoke-static {p0}, Lcom/flyme/systemui/quickreply/QuickReplyController;->access$000(Lcom/flyme/systemui/quickreply/QuickReplyController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickReplyController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
