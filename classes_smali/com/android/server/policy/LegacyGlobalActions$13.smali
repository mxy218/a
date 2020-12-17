.class Lcom/android/server/policy/LegacyGlobalActions$13;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/LegacyGlobalActions;

    .line 794
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 797
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_37

    .line 809
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1300(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto :goto_37

    .line 805
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1200(Lcom/android/server/policy/LegacyGlobalActions;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 807
    goto :goto_37

    .line 799
    :cond_20
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 800
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 801
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1102(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)Lcom/android/internal/globalactions/ActionsDialog;

    .line 812
    :cond_37
    :goto_37
    return-void
.end method
