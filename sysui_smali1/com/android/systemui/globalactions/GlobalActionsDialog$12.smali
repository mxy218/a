.class Lcom/android/systemui/globalactions/GlobalActionsDialog$12;
.super Landroid/os/Handler;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 2

    .line 1451
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1453
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_20

    const/4 p1, 0x1

    if-eq v0, p1, :cond_11

    const/4 p1, 0x2

    if-eq v0, p1, :cond_b

    goto :goto_4b

    .line 1469
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    goto :goto_4b

    .line 1465
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    .line 1466
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_4b

    .line 1455
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1456
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "dream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1457
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissImmediately()V

    goto :goto_45

    .line 1459
    :cond_3c
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    .line 1461
    :goto_45
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$902(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    :cond_4b
    :goto_4b
    return-void
.end method
