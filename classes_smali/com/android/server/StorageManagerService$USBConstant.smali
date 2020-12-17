.class public Lcom/android/server/StorageManagerService$USBConstant;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "USBConstant"
.end annotation


# static fields
.field public static final ACTION_EXTERNAL_VOLUME_IDLE:Ljava/lang/String; = "action.external.volume.idle"

.field public static final ACTION_EXTERNAL_VOLUME_MOUNTED:Ljava/lang/String; = "action.external.volume.mounted"

.field public static final ACTION_EXTERNAL_VOLUME_REMOVED:Ljava/lang/String; = "action.external.volume.removed"

.field public static final ACTION_EXTERNAL_VOLUME_UNMOUNTING:Ljava/lang/String; = "action.external.volume.unmounting"


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;

    .line 279
    iput-object p1, p0, Lcom/android/server/StorageManagerService$USBConstant;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
