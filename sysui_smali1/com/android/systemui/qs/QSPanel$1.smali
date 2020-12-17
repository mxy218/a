.class Lcom/android/systemui/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 3

    .line 556
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 589
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanel;->access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 590
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method public onScanStateChanged(Z)V
    .registers 3

    .line 580
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 581
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanel;->access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne p1, v0, :cond_15

    .line 582
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-boolean p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSPanel;->access$300(Lcom/android/systemui/qs/QSPanel;Z)V

    :cond_15
    return-void
.end method

.method public onShowDetail(Z)V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->shouldShowDetail()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 567
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    :cond_f
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 3

    .line 559
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public onToggleStateChanged(Z)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_f

    .line 574
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSPanel;->access$200(Lcom/android/systemui/qs/QSPanel;Z)V

    :cond_f
    return-void
.end method
