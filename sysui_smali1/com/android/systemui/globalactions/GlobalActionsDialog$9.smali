.class Lcom/android/systemui/globalactions/GlobalActionsDialog$9;
.super Landroid/telephony/PhoneStateListener;
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

    .line 1419
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1423
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1424
    :goto_13
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1c

    :cond_1a
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_1c
    invoke-static {v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$402(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1425
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    .line 1426
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
