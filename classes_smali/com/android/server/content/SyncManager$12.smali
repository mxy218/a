.class Lcom/android/server/content/SyncManager$12;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 693
    iput-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    iput-object p3, p0, Lcom/android/server/content/SyncManager$12;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 695
    iget-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/content/SyncManager;->access$1576(Lcom/android/server/content/SyncManager;I)Z

    .line 696
    iget-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 697
    iget-object p1, p0, Lcom/android/server/content/SyncManager$12;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 699
    :cond_16
    return-void
.end method
