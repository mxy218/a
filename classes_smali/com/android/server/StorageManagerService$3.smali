.class Lcom/android/server/StorageManagerService$3;
.super Landroid/database/ContentObserver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->handleSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 792
    iput-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 795
    iget-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)V

    .line 796
    return-void
.end method
