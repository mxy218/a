.class Lcom/android/server/storage/DeviceStorageMonitorService$4;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;->showCriticalLowDialog(Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Ljava/util/UUID;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 638
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$4;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iput-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$4;->val$uuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"  # Landroid/content/DialogInterface;
    .param p2, "which"  # I

    .line 641
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$4;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$4;->val$uuid:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$600(Lcom/android/server/storage/DeviceStorageMonitorService;Ljava/util/UUID;)Landroid/content/Intent;

    move-result-object v0

    .line 642
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 644
    :try_start_d
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$4;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    .line 647
    goto :goto_1b

    .line 645
    :catch_17
    move-exception v1

    .line 646
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 648
    .end local v1  # "e":Landroid/content/ActivityNotFoundException;
    :goto_1b
    return-void
.end method
