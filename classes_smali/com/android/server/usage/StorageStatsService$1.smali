.class Lcom/android/server/usage/StorageStatsService$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 5

    .line 122
    iget p1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 p2, 0x2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    if-eq p1, p2, :cond_b

    goto :goto_12

    .line 126
    :cond_b
    if-ne p3, p2, :cond_12

    .line 127
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService;->access$000(Lcom/android/server/usage/StorageStatsService;)V

    .line 130
    :cond_12
    :goto_12
    return-void
.end method
