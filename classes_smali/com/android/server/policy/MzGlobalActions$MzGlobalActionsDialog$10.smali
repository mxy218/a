.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->confirmPassword(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .line 560
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$10;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->access$1400(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;IZ)V

    .line 565
    return-void
.end method
