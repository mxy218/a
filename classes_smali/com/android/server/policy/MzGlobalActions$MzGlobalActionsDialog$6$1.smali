.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;
.super Ljava/lang/Thread;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$2"  # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;
    .param p2, "x0"  # Ljava/lang/String;

    .line 480
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 484
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 489
    goto :goto_10

    .line 485
    :catch_8
    move-exception v0

    .line 486
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MzGlobalActions"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v0  # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method
