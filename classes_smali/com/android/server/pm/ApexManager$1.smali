.class Lcom/android/server/pm/ApexManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ApexManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ApexManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ApexManager;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$1;->this$0:Lcom/android/server/pm/ApexManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 108
    iget-object p1, p0, Lcom/android/server/pm/ApexManager$1;->this$0:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->onBootCompleted()V

    .line 109
    iget-object p1, p0, Lcom/android/server/pm/ApexManager$1;->this$0:Lcom/android/server/pm/ApexManager;

    invoke-static {p1}, Lcom/android/server/pm/ApexManager;->access$000(Lcom/android/server/pm/ApexManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    return-void
.end method
